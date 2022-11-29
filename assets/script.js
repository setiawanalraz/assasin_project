const dropArea = document.querySelector(".drag-area"),
    dragText = dropArea.querySelector("header"),
    button = dropArea.querySelector("button"),
    fileInput = dropArea.querySelector(".file-input"),
    uploadedArea = dropArea.querySelector(".uploaded-area");
let file; //this is a global variable and we'll us it inside multiple functions

button.onclick = () => {
    fileInput.click(); //if user click on the button then the input also clicked
}

fileInput.addEventListener("change", function () {
    //getting user select file and [0] this means if user select multiple files then we'll select only the first one
    file = this.files[0];
    dropArea.classList.add("active");
});

function uploadFile(name) {
    let xhr = new XMLHttpRequest(); //creating new xml obj (AJAX)
    xhr.open("POST", "finalprojectphpmvc/models/Upload_Model.php/saveuploafiled"); //sending post request to the specified URL/File
    xhr.upload.addEventListener("progress", (loaded, total) => {
        let fileLoaded = Math.floor((loaded / total) * 100); //getting precentage of loaded file size
        let fileTotal = Math.floor((total) / 100); //getting file size in KB from bytes
        // let uploadedHTML = ' <li class="row">
        //     < div class="content" >
        //         <div class="icon mb-3"><img src="assets/img/Vector.png" alt="" width="51.56"><br><br>
        //             <div class="details">
        //                 <span class="name">image_01.png . Uploaded</span>
        //                 <span class="size">70 KB</span>
        //             </div>
        //         </div>
        //         </li>';
    });
    let formData = new FormData(dropArea); //formData is an object to easily send form data
    xhr.send(formData); //sending form data to php
}

// If user Drag File Over DropArea
dropArea.addEventListener("dragover", (event) => {
    event.preventDefault(); //preventing from default behaviour
    dropArea.classList.add("active");
    dragText.textContent = "Realese to Upload File";
});

// If user leave dragged File from DropArea
dropArea.addEventListener("dragleave", () => {
    dropArea.classList.remove("active");
    dragText.textContent = "Drag And Drop Your File Here";
});

// If user drop File on DropArea
dropArea.addEventListener("drop", (event) => {
    event.preventDefault(); //preventing from default behaviour
    //getting user select file and [0] this means if user select multiple files then we'll select only the first one
    file = event.dataTransfer.files[0];
    let fileType = file.type;

    let validExtensions = ["text/csv", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"]; //adding some valid files extensions in array
    if (validExtensions.includes(fileType)) { //if user selected file is an file
        let fileReader = new FileReader(); //creating new fileReader object
        fileReader.onload = () => {
            let fileURL = fileReader.result; //passing user file source in fileURL variable
            console.log(fileURL);
        }
        fileReader.readAsDataURL(file);
    } else {
        alert("This is not an File!");
        dropArea.classList.remove("active");
        dragText.textContent = "Drag And Drop Your File Here";
    }

});



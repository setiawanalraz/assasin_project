<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * save json
 * @param  Array | $array | array
 * @param  String | $dir | dir location default: applcation/cache/
 * @return json 
 */

function save($array, $dir = NULL)
{
	/**
	 * param passed?
	 * set default dir path
	 */
	// if(empty($dir))
	// {
	// 	$dir = APPPATH;
	// 	$config_path = config_item('cache_path');		
	// 	$dir = (!empty($config_path)) ? $dir.$config_path : $dir.'cache/score.cache';
	// }

	/**
	 * file exist?
	 */
	if(file_exists($dir))
	{
		$json = file_get_contents($dir);
		$json = (array)json_decode($json);
	
		foreach ($json as $key => $value) 
		{
			if($key == $array['content'])
			{
				unset($json[$key]);
				$sjson[$key]['jobId'] = $array['jobId'];
				$sjson[$key]['trxId'] = $array['trxId'];
				$sjson[$key]['MSISDN'] = $array['MSISDN'];			
				$sjson[$key]['message'] = $array['message'];			
				$sjson[$key]['dateCreated'] = $array['dateCreated'];			
				$sjson[$key]['dateUpdated'] = $array['dateUpdated'];			
				$sjson[$key]['status'] = $array['status'];
				break;
			}
			else
			{
				$sjson[$array['content']]['jobId'] = $array['jobId'];
				$sjson[$array['content']]['trxId'] = $array['trxId'];
				$sjson[$array['content']]['MSISDN'] = $array['MSISDN'];
				$sjson[$array['content']]['message'] = $array['message'];
				$sjson[$array['content']]['dateCreated'] = $array['dateCreated'];
				$sjson[$array['content']]['dateUpdated'] = $array['dateUpdated'];
				$sjson[$array['content']]['status'] = $array['status'];
			}
		}

		$json = array_merge($json, $sjson);
		$json = json_encode($json);
		file_put_contents($dir, $json);
	}
	else
	{
		$json = json_encode(array($array['content'] => $array));
		file_put_contents($dir, $json);
	}
	return $json;
}

/* End of file json.php */
/* Location: ./application/helpers/json.php */
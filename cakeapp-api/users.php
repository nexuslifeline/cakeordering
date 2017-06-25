<?php
include_once("classes/Transaction.php");

$txnmode       = $_GET['txnmode'];
$txn 		   = new Transaction();

if($txnmode=='list'){
	$result = $txn->getData('SELECT * FROM user_accounts');	
	echo json_encode($result);
}elseif ($txnmode=='delete') {
	if($txn->delete(8,'user_accounts')){

		echo "success";
	}else{
		echo "failed";
	}
}

?>
-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 5

DELETE FROM
	`/local/Issue681Table`
WHERE
	`/local/Issue681Table`.ID = $ID


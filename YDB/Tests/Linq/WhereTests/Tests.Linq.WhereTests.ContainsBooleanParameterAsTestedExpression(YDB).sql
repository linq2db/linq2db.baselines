-- YDB Ydb
DECLARE $flag Bool -- Boolean
SET     $flag = true

SELECT
	t.ID as ID
FROM
	LinqDataTypes t
WHERE
	$flag IN (t.BoolValue)


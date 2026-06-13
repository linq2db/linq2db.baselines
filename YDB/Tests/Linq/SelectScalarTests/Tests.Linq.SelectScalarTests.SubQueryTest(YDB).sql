-- YDB Ydb

$CTE_1 = 	SELECT
		p.Value1 as f1
	FROM
		Parent p
	LIMIT 1
;

SELECT
	$CTE_1 as f1


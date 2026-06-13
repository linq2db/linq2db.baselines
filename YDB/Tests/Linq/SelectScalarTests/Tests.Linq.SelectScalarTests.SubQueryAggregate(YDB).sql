-- YDB Ydb

$CTE_1 = 	SELECT
		COUNT(*) as Parents
	FROM
		Parent t1
;
$CTE_2 = 	SELECT
		COUNT(*) as Children
	FROM
		Child t2
;

SELECT
	$CTE_1 as Parents,
	$CTE_2 as Children


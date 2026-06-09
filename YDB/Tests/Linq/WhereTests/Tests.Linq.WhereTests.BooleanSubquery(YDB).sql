-- YDB Ydb

$CTE_1 = 	SELECT
		x.BoolValue as BoolValue
	FROM
		WhereWithBool x
	WHERE
		x.Id = 1
;

SELECT
	t.Id as Id,
	t.BoolValue as BoolValue
FROM
	WhereWithBool t
WHERE
	$CTE_1


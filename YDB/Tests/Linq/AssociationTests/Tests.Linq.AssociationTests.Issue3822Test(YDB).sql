-- YDB Ydb

$CTE_1 = 	SELECT
		a_WindowAtPosition.Id as Id
	FROM
		`Window` a_WindowAtPosition
	WHERE
		a_WindowAtPosition.`Position` = 6
	LIMIT 1
;

SELECT
	$CTE_1 as Id
FROM
	Dog x
		INNER JOIN Human a_Owner ON x.OwnerId = a_Owner.Id
		INNER JOIN House a_House ON a_Owner.HouseId = a_House.Id
LIMIT 1


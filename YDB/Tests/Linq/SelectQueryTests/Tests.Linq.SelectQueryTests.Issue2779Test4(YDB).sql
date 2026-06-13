-- YDB Ydb

$CTE_1 = 	SELECT
		t1.`value` as value_1
	FROM
		(
			SELECT 1 as value
		) t1
;

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x
WHERE
	x.PersonID IN (
		SELECT
			t2.value_1
		FROM
			$CTE_1 t2
	)


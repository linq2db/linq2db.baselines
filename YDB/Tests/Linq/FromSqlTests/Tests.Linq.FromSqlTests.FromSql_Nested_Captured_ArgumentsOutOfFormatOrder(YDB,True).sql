-- YDB Ydb
DECLARE $p Text(1) -- String
SET     $p = 'X'u
DECLARE $p_1 Int32
SET     $p_1 = 1

$CTE_1 = 	SELECT
		x.PersonID as ID
	FROM
		(
			SELECT * FROM Person WHERE (PersonID = $p_1 OR PersonID = $p_1) AND LastName <> $p
		) x
;

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID IN (
		SELECT
			t1.ID
		FROM
			$CTE_1 t1
	)


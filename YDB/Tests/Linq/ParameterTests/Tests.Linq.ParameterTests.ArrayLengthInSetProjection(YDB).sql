-- YDB Ydb
DECLARE $arr Int32
SET     $arr = 2

SELECT
	p.PersonID as PersonID,
	Unwrap(CAST($arr AS Int32)) as L
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	Unwrap(CAST(0 AS Int32)) as L
FROM
	Person p_1
WHERE
	p_1.PersonID = 2

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1


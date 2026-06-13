-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	Unwrap(CAST('id=1'u AS Text)) as Marker
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as ID,
	p_1.FirstName as FirstName,
	Unwrap(CAST('id=2'u AS Text)) as Marker
FROM
	Person p_1
WHERE
	p_1.PersonID = 2


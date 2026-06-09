-- YDB Ydb

SELECT
	Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) = 0 as c1
FROM
	Person p
WHERE
	p.PersonID = 1


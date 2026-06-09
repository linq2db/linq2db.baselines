-- YDB Ydb

SELECT
	Unicode::Substring(p.FirstName, CAST(Unicode::GetLength(p.FirstName) - 3 AS UInt32), 3) as c1
FROM
	Person p
WHERE
	p.PersonID = 1


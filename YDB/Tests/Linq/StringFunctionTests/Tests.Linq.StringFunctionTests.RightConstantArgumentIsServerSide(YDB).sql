-- YDB Ydb
SELECT
	Unicode::Substring('John'u, CAST(Unicode::GetLength('John'u) - 3 AS UInt32), 3) as c1
FROM
	Person p
WHERE
	p.PersonID = 1


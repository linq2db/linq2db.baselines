-- YDB Ydb

SELECT
	Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) as c1
FROM
	Person p


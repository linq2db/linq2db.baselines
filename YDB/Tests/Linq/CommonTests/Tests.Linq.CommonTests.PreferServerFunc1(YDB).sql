-- YDB Ydb

SELECT
	Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) as Length_1
FROM
	Person p


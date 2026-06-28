-- YDB Ydb

SELECT
	'I-'u || Unwrap(CAST(x.PersonID AS Text)) as Id,
	x.FirstName as FirstName
FROM
	Person x
UNION ALL
SELECT
	CAST(NULL AS Text) as Id,
	'QUASI-'u || x_1.FirstName as FirstName
FROM
	Person x_1


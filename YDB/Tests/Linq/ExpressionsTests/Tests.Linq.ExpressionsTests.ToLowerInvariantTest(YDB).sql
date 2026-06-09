-- YDB Ydb

SELECT
	Unicode::ToLower(p.Taxonomy) as c1
FROM
	Doctor p
WHERE
	Unicode::ToLower(p.Taxonomy) = 'psychiatry'u


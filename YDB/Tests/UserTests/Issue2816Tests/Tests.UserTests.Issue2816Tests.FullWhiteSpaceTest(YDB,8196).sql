-- YDB Ydb

SELECT
	p.Id as Id,
	p.Text as Text
FROM
	Issue2816Table p
WHERE
	NOT (p.Text IS NULL OR LENGTH(Unicode::Strip(Unicode::ReplaceAll(p.Text, ''u, ' 'u))) = 0)


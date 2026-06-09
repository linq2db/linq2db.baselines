-- YDB Ydb

SELECT
	p.Id as Id,
	p.Text as Text
FROM
	Issue2816Table p
WHERE
	p.Text IS NULL OR LENGTH(Unicode::Strip(Unicode::ReplaceAll(p.Text, ''u, ' 'u))) = 0

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Text as Text
FROM
	Issue2816Table t1


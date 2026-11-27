-- YDB Ydb
SELECT
	p.Id as Id,
	p.Text as Text
FROM
	WhiteSpaceTextRow p
WHERE
	NOT (p.Text IS NULL OR Length(Unicode::Strip(Unicode::ReplaceAll(p.Text, ''u, ' 'u))) = 0)


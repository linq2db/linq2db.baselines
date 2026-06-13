-- YDB Ydb

SELECT
	x.Id as Id,
	x.StringValue as StringValue
FROM
	WhereWithString x
WHERE
	x.StringValue LIKE '%Str%'u ESCAPE '~'s AND x.StringValue IS NOT NULL


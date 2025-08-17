BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	position(x.StringValue, 'Str') > 0 AND x.StringValue IS NOT NULL


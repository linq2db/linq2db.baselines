BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.Id = 2


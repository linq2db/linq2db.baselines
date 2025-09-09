BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.Id = 2


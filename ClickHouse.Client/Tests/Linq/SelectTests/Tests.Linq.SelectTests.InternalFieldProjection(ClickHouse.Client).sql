BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.ID,
	x.StringValue
FROM
	LinqDataTypes x
WHERE
	x.StringValue <> '' OR x.StringValue IS NULL
ORDER BY
	x.ID


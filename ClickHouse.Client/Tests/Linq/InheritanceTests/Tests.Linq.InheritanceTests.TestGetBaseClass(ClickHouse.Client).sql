BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Value1,
	x.ParentID
FROM
	Parent x
WHERE
	x.Value1 = 1 OR x.Value1 = 2


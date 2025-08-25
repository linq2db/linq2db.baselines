BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1 OR p.ParentID >= 1 OR p.ParentID >= 10000
ORDER BY
	p.ParentID
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 2 OR p.ParentID >= 2 OR p.ParentID >= 10000
ORDER BY
	p.ParentID
LIMIT 1


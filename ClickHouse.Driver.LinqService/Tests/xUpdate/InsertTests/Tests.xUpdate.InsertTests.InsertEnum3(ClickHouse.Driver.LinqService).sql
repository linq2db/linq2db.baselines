BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID = 1001

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000


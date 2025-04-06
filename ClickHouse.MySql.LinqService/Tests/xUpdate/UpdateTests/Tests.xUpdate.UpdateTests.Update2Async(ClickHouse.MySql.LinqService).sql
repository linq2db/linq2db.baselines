BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1001
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	Parent
UPDATE
	ParentID = ParentID + 1
WHERE
	ParentID = 1001

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1002


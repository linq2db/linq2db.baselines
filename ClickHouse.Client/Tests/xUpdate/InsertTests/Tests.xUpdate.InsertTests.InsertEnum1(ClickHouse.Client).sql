BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Parent _
WHERE
	_.ParentID = 1001 AND _.Value1 = 2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000


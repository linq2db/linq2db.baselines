BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID = 1001 AND t1.Value1 = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000


BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = 1001

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
	1001
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = 1001

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001


BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	toInt32(1001),
	toInt32(1001)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Parent
UPDATE
	ParentID = ParentID + toInt32(1)
WHERE
	ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1002)


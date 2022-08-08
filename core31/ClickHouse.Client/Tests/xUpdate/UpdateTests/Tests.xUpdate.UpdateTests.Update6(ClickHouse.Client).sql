BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Parent
(
	Value1,
	ParentID
)
VALUES
(
	toInt32(1),
	toInt32(1001)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001) AND p.Value1 = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = toInt32(2)
WHERE
	ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001) AND p.Value1 = toInt32(2)


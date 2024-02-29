BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = toInt32(1002)
WHERE
	ParentID = toInt32(1001)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001)
LIMIT toInt32(2)


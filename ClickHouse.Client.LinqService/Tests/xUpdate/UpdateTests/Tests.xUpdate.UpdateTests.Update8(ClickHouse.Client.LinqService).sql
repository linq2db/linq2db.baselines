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
	1001
)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 1002
WHERE
	ParentID = 1001

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1001
LIMIT 2


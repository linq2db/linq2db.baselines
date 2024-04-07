BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	toInt32(1001),
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1001)


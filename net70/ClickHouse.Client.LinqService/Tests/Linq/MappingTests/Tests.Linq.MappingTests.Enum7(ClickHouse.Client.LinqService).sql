BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = toInt32(1)
WHERE
	Value1 = toInt32(1)


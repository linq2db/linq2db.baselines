BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 1
WHERE
	Value1 = 1 AND Value1 IS NOT NULL


BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

BeforeExecute
INSERT ASYNC BULK Parent(ParentID, Value1)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = 1000 AND Value1 IS NULL OR ParentID = 1001 AND Value1 IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000


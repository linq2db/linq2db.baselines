BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= toInt32(1000)

BeforeExecute
INSERT ASYNC BULK Parent(ParentID, Value1)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	(ParentID = toInt32(1000) AND Value1 IS NULL OR ParentID = toInt32(1001) AND Value1 IS NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= toInt32(1000)


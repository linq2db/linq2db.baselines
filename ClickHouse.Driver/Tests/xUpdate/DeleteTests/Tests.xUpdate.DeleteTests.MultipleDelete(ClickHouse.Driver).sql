-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

INSERT ASYNC BULK Parent(ParentID, Value1)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = 1000 AND Value1 IS NULL OR ParentID = 1001 AND Value1 IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000


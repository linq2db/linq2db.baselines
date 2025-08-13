BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000

BeforeExecute
INSERT INTO Parent(ParentID, Value1) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID = 1000 AND Value1 IS NULL OR ParentID = 1001 AND Value1 IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
DELETE WHERE
	ParentID >= 1000


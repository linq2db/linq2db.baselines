BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GrandChild
UPDATE
	GrandChildID = toInt32(1000)
WHERE
	ParentID = toInt32(10000) AND ChildID IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GrandChild
UPDATE
	GrandChildID = toInt32(1000)
WHERE
	ParentID = toInt32(10000) AND ChildID = toInt32(111)


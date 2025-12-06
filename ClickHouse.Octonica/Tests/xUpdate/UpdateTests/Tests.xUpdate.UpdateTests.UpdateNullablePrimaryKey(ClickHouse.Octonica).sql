-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GrandChild
UPDATE
	GrandChildID = 1000
WHERE
	ParentID = 10000 AND ChildID IS NULL

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GrandChild
UPDATE
	GrandChildID = 1000
WHERE
	ParentID = 10000 AND ChildID = 111


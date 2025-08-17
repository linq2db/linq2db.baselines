BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	GrandChild
UPDATE
	GrandChildID = 1000
WHERE
	ParentID = 10000 AND ChildID IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	GrandChild
UPDATE
	GrandChildID = 1000
WHERE
	ParentID = 10000 AND ChildID = 111


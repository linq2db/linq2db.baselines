-- DuckDB
DECLARE $GrandChildID  -- Int32
SET     $GrandChildID = 1000
DECLARE $ParentID  -- Int32
SET     $ParentID = 10000

UPDATE
	GrandChild
SET
	GrandChildID = CAST($GrandChildID AS INTEGER)
WHERE
	GrandChild.ParentID = CAST($ParentID AS INTEGER) AND
	GrandChild.ChildID IS NULL

-- DuckDB
DECLARE $GrandChildID  -- Int32
SET     $GrandChildID = 1000
DECLARE $ParentID  -- Int32
SET     $ParentID = 10000
DECLARE $ChildID  -- Int32
SET     $ChildID = 111

UPDATE
	GrandChild
SET
	GrandChildID = CAST($GrandChildID AS INTEGER)
WHERE
	GrandChild.ParentID = CAST($ParentID AS INTEGER) AND
	GrandChild.ChildID = CAST($ChildID AS INTEGER)


-- DuckDB
DECLARE $GrandChildID INTEGER -- Int32
SET     $GrandChildID = 1000
DECLARE $ParentID INTEGER -- Int32
SET     $ParentID = 10000

UPDATE
	GrandChild
SET
	GrandChildID = $GrandChildID
WHERE
	GrandChild.ParentID = $ParentID AND GrandChild.ChildID IS NULL

-- DuckDB
DECLARE $GrandChildID INTEGER -- Int32
SET     $GrandChildID = 1000
DECLARE $ParentID INTEGER -- Int32
SET     $ParentID = 10000
DECLARE $ChildID INTEGER -- Int32
SET     $ChildID = 111

UPDATE
	GrandChild
SET
	GrandChildID = $GrandChildID
WHERE
	GrandChild.ParentID = $ParentID AND GrandChild.ChildID = $ChildID


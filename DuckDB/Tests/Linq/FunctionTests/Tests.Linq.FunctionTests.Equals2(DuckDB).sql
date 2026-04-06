-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2
DECLARE $ChildID  -- Int32
SET     $ChildID = 21

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	NOT (ch.ParentID = CAST($ParentID AS INTEGER) AND ch.ChildID = CAST($ChildID AS INTEGER))


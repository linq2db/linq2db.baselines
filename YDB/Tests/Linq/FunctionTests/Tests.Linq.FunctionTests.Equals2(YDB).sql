-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 2
DECLARE $ChildID Int32
SET     $ChildID = 21

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
WHERE
	NOT (ch.ParentID = $ParentID AND ch.ChildID = $ChildID)


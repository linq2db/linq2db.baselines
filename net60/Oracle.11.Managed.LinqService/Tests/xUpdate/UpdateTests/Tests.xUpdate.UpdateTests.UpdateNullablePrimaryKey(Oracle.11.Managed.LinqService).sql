BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GrandChildID Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int32
SET     @ParentID = 10000

UPDATE
	"GrandChild"
SET
	"GrandChild"."GrandChildID" = :GrandChildID
WHERE
	"GrandChild"."ParentID" = :ParentID AND "GrandChild"."ChildID" IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GrandChildID Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Int32
SET     @ParentID = 10000
DECLARE @ChildID Int32
SET     @ChildID = 111

UPDATE
	"GrandChild"
SET
	"GrandChild"."GrandChildID" = :GrandChildID
WHERE
	"GrandChild"."ParentID" = :ParentID AND "GrandChild"."ChildID" = :ChildID


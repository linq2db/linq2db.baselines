BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
WHERE
	1 = 0


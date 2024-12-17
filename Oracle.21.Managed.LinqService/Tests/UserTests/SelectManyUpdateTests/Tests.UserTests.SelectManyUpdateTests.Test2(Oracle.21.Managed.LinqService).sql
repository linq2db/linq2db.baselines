BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = :ChildID
WHERE
	1 = 0


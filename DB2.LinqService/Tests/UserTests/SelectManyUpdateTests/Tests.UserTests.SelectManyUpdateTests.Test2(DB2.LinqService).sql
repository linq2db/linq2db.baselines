BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = CAST(@ChildID AS Int)
WHERE
	1 = 0


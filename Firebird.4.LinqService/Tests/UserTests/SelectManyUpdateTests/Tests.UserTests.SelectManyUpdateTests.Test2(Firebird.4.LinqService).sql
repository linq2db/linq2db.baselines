BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 10

UPDATE
	"Child"
SET
	"ChildID" = CAST(@ChildID AS Int)
WHERE
	1 = 0


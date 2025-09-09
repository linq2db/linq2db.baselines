BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT FIRST @n
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"


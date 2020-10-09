BeforeExecute
-- Firebird3 Firebird
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT SKIP @n 
	"t1"."ParentID", 
	"t1"."ChildID"
FROM
	"Child" "t1"


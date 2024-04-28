BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		RIGHT JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"


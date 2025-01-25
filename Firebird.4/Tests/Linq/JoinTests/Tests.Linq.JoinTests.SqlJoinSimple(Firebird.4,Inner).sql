BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"


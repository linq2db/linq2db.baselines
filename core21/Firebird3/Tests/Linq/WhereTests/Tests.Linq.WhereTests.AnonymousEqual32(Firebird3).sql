BeforeExecute
-- Firebird3 Firebird

SELECT 
	"ch"."ParentID", 
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	(2 = "ch"."ParentID" AND 21 = "ch"."ChildID")


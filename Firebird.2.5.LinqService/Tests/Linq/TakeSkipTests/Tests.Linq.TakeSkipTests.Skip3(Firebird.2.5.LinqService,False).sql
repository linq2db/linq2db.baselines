BeforeExecute
-- Firebird.2.5 Firebird

SELECT SKIP 3
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
ORDER BY
	"ch"."ParentID",
	"ch"."ChildID"


BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 3
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" > 3 OR "ch"."ChildID" < 4


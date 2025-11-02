-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT SKIP @skip
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
ORDER BY
	"ch"."ParentID",
	"ch"."ChildID"


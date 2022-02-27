BeforeExecute
-- SapHana.Native SapHana
DECLARE @skip  -- Int32
SET     @skip = 3

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
LIMIT 4200000000 OFFSET :"skip"


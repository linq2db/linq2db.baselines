BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	MAX("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0


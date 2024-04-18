BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Max("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0


-- Firebird.3 Firebird3

SELECT
	MIN("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0


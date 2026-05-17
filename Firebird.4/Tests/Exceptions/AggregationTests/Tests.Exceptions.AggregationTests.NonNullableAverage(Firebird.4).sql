-- Firebird.4 Firebird4

SELECT
	AVG("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0


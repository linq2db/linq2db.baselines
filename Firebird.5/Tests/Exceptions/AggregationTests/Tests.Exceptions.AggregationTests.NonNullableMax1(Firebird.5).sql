-- Firebird.5 Firebird4

SELECT
	MAX("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0


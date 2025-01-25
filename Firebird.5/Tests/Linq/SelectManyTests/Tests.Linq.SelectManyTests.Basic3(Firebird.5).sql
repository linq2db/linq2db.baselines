BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID" + 1
FROM
	"Parent" "p",
	"Child" "t1"
WHERE
	"t1"."ParentID" > 0


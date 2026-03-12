-- Firebird.5 Firebird4

SELECT
	"p1"."Value1",
	NULL
FROM
	"Parent" "p1"
UNION
SELECT
	"p2"."Value1",
	"p2"."ParentID"
FROM
	"Parent" "p2"


BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p1"."ParentID",
	"p1"."Value1"
FROM
	"Parent" "p1"
UNION
SELECT
	"p2"."ParentID",
	NULL
FROM
	"Parent" "p2"


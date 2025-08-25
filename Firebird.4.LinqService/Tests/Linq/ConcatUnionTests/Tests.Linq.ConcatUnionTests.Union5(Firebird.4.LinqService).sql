BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
UNION
SELECT
	"p2"."ParentID",
	NULL
FROM
	"Parent" "p2"


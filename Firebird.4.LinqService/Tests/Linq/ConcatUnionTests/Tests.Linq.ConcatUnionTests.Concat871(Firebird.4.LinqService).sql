BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"c_1"."Value1",
	NULL
FROM
	"Parent" "c_1"
UNION ALL
SELECT
	NULL,
	"c_2"."ParentID"
FROM
	"Child" "c_2"


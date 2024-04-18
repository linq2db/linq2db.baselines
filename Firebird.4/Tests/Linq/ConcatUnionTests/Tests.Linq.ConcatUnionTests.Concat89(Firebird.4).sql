BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"c_1"."ParentID",
	"c_1"."ParentID"
FROM
	"Child" "c_1"
UNION ALL
SELECT
	"c_2"."ParentID",
	NULL
FROM
	"Parent" "c_2"


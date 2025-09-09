BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"c_1"."ParentID",
	"c_1"."ParentID"
FROM
	"Child" "c_1"
UNION ALL
SELECT
	CAST(NULL AS Int),
	"c_2"."ParentID"
FROM
	"Parent" "c_2"


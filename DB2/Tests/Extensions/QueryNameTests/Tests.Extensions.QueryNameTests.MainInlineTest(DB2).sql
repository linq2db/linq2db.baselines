BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT /* Main */
	"p"."ParentID",
	"p"."Value1",
	"t1".COUNT_1
FROM
	(
		SELECT /* Inline */
			"g_1"."ParentID",
			COUNT(*) as COUNT_1
		FROM
			"Child" "g_1"
		GROUP BY
			"g_1"."ParentID"
	) "t1",
	"Parent" "p"
WHERE
	"p"."ParentID" = "t1"."ParentID"


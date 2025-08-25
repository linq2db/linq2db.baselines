BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "t1_1"
		WHERE
			"t1"."ParentID" = "t1_1"."ParentID"
	) AS smallint)
FROM
	"Parent" "t1"


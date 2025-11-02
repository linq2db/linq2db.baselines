-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"t1"."ParentID" = "c_1"."ParentID"
	) AS smallint)
FROM
	"Parent" "t1"


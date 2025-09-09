BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
	) AS smallint),
	CAST("x"."ParentID" <> 0 AS smallint)
FROM
	"Parent" "x"
UNION ALL
SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "t2"
	) AS smallint),
	CAST(NULL AS smallint)
FROM
	"Parent" "x_1"


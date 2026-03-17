-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."val"
FROM
	(
		SELECT
			"p"."ParentID" as "id",
			CAST(1 AS smallint) as "val"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"ch"."ParentID" as "id",
			CAST(0 AS smallint) as "val"
		FROM
			"Child" "ch"
	) "p_1"


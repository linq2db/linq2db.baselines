BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_2"."val"
FROM
	(
		SELECT
			"p"."ParentID" as "id",
			CAST(1 AS smallint) as "val"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"p_1"."ParentID" as "id",
			CAST(0 AS smallint) as "val"
		FROM
			"Parent" "p_1"
		UNION
		SELECT
			"ch"."ParentID" as "id",
			CAST(0 AS smallint) as "val"
		FROM
			"Child" "ch"
	) "p_2"


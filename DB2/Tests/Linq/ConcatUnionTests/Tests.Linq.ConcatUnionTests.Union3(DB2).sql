-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	CAST(1 AS smallint)
FROM
	"Parent" "p"
UNION
SELECT
	"ch"."ParentID",
	CAST(0 AS smallint)
FROM
	"Child" "ch"


-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" + @n IN (
		SELECT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
	)


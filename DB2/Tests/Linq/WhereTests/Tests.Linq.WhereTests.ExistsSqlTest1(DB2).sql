BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" + 100 IN (
		SELECT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
	)


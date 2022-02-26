BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)


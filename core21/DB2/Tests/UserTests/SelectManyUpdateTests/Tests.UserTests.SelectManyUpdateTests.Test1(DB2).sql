BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Parent"
SET
	"Parent"."Value1" = NULL
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			"Parent" "x"
				INNER JOIN "Parent" "c_1" ON "x"."ParentID" = "c_1"."Value1"
		WHERE
			"x"."ParentID" IN (0, 0) AND "Parent"."ParentID" = "x"."ParentID"
	)


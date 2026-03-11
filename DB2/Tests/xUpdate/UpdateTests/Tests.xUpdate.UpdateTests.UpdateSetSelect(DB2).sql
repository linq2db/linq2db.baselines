-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT
			(
				SELECT
					"c_3"."ParentID"
				FROM
					"Child" "c_3"
				WHERE
					"c_3"."ChildID" = 11
			) + 1000
		FROM
			"Parent" "p_1"
				INNER JOIN "Child" "c_2" ON "p_1"."ParentID" = "c_2"."ParentID"
		WHERE
			"p_1"."ParentID" = 1 AND "Parent"."ParentID" = "p_1"."ParentID" AND
			("Parent"."Value1" = "p_1"."Value1" OR "Parent"."Value1" IS NULL AND "p_1"."Value1" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
				INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
		WHERE
			"p"."ParentID" = 1 AND "Parent"."ParentID" = "p"."ParentID" AND
			("Parent"."Value1" = "p"."Value1" OR "Parent"."Value1" IS NULL AND "p"."Value1" IS NULL)
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

UPDATE
	"Parent" "t1"
SET
	"ParentID" = @ParentID
WHERE
	"t1"."ParentID" = 1001


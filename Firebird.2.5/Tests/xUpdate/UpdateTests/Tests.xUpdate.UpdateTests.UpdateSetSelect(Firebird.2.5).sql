-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- Firebird.2.5 Firebird

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT
			"c_2"."ParentID"
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ChildID" = 11
	) + 1000
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

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	"Parent" "t1"
SET
	"ParentID" = CAST(@ParentID AS Int)
WHERE
	"t1"."ParentID" = 1001


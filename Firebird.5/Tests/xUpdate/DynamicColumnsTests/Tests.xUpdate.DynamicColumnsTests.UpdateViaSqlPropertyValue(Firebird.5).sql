-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	@id
)

-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

-- Firebird.5 Firebird4
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 5000
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = CAST(@ChildID AS Int)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
				LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"c_1"."ChildID" = @id AND
			"a_Parent"."Value1" = 1 AND
			"Child"."ParentID" = "c_1"."ParentID" AND
			"Child"."ChildID" = "c_1"."ChildID"
	)

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 5000


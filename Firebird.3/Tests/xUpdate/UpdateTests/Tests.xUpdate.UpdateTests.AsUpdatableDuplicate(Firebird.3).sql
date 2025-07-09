BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = "Child"."ChildID" + 2
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
				INNER JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"c_1"."ChildID" = @id AND
			"a_Parent"."Value1" = 1 AND
			"Child"."ParentID" = "c_1"."ParentID" AND
			"Child"."ChildID" = "c_1"."ChildID"
	)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 1003

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @p


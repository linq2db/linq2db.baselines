-- Firebird.3 Firebird3

DELETE FROM
	"Parent" "t1"

-- Firebird.3 Firebird3

DELETE FROM
	"Child" "t1"

-- Firebird.3 Firebird3

DELETE FROM
	"GrandChild" "t1"

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	@Id
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	@Id
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	@Id
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	@Id
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @LeftId Integer -- Int32
SET     @LeftId = 100
DECLARE @RightId Integer -- Int32
SET     @RightId = 200

INSERT INTO "GrandChild"
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	@Id,
	@LeftId,
	@RightId
)

-- Firebird.3 Firebird3

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"t2"."ChildID" as "RightId"
	FROM
		"Parent" "t1"
			CROSS JOIN "Child" "t2"
) "Source"
(
	"RightId"
)
ON ("Target"."GrandChildID" = "Source"."RightId")

WHEN NOT MATCHED THEN
INSERT
(
	"ChildID"
)
VALUES
(
	"Source"."RightId"
)

-- Firebird.3 Firebird3

SELECT
	"t1"."GrandChildID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
ORDER BY
	"t1"."GrandChildID",
	"t1"."ChildID"


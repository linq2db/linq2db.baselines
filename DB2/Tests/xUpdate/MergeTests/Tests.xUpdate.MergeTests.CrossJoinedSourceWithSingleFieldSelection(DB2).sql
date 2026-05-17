-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "t1"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"GrandChild" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Parent"
(
	"ParentID"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20

INSERT INTO "Child"
(
	"ChildID"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 11
DECLARE @LeftId Integer(4) -- Int32
SET     @LeftId = 100
DECLARE @RightId Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"t2"."ChildID" as "RightId"
	FROM
		"Parent" "t1",
		"Child" "t2"
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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."GrandChildID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"


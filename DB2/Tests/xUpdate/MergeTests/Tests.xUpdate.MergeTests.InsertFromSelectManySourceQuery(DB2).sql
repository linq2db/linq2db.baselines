BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"GrandChild" "t1"

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "GrandChild" "Target"
USING (
	SELECT
		"r"."ParentID" + "t2"."ChildID" as "ResultId",
		"r"."ParentID" as "LeftId",
		"t2"."ChildID" as "RightId"
	FROM
		"Parent" "r",
		"Child" "t2"
) "Source"
(
	"ResultId",
	"LeftId",
	"RightId"
)
ON ("Target"."GrandChildID" = "Source"."ResultId")

WHEN NOT MATCHED THEN
INSERT
(
	"GrandChildID",
	"ParentID",
	"ChildID"
)
VALUES
(
	"Source"."ResultId",
	"Source"."LeftId",
	"Source"."RightId"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."GrandChildID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
ORDER BY
	"t1"."GrandChildID"

BeforeExecute
DisposeTransaction

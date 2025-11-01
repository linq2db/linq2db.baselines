-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	1
)

-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = @id

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000


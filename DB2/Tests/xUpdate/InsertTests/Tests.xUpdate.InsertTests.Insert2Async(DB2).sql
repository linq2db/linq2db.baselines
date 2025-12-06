-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000


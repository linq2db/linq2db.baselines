-- DB2 DB2.LUW DB2LUW
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW
DECLARE @values Integer(4) -- Int32
SET     @values = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@values,
	1
)

-- DB2 DB2.LUW DB2LUW
DECLARE @values Integer(4) -- Int32
SET     @values = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@values,
	1
)

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- DB2 DB2.LUW DB2LUW
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000


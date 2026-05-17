-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	"c_1"."ParentID" + 1000,
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11


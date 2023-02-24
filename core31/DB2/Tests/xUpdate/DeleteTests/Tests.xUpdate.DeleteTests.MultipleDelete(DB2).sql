BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	("t1"."ParentID" = 1000 AND "t1"."Value1" IS NULL OR "t1"."ParentID" = 1001 AND "t1"."Value1" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000


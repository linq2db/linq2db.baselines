BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000

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
	"Parent" "p"
WHERE
	"p"."ParentID" = 1000 AND "p"."Value1" IS NULL OR "p"."ParentID" = 1001 AND "p"."Value1" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" >= 1000


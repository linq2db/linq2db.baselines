BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1111,1111),
(2111,2111),
(3111,3111),
(4111,4111)

BeforeExecute
CommitTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID


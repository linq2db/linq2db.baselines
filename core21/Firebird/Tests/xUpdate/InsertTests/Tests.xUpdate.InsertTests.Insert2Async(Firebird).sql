BeforeExecute
-- Firebird (asynchronously)

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	Cast(@id as Int)
)

BeforeExecute
-- Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird (asynchronously)

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000


BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"Value1",
	"ParentID"
)
VALUES
(
	@Value1,
	@ParentID
)

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 1

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 2
WHERE
	"Parent"."ParentID" = @id

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 2

BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000


BeforeExecute
-- Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1010

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Firebird

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 1012
WHERE
	"Parent"."ParentID" = 1010

BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000


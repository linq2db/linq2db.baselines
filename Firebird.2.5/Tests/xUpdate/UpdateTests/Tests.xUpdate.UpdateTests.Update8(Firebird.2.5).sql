BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

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
-- Firebird.2.5 Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	"Parent" "t1"
SET
	"Value1" = CAST(@Value1 AS Int)
WHERE
	"t1"."ParentID" = @ParentID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT FIRST 2
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID


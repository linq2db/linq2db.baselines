BeforeExecute
-- Firebird.2.5 Firebird
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
	CAST(@Value1 AS Int),
	CAST(@ParentID AS Int)
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 1

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = 2
WHERE
	"p"."ParentID" = @id

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 2


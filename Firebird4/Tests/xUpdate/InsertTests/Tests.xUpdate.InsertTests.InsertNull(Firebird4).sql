BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	Cast(@ParentID as Int),
	Cast(@Value1 as Int)
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1001


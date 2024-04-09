BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = @ParentID

BeforeExecute
-- Firebird4 Firebird
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
	CAST(@ParentID AS Int),
	CAST(@Value1 AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

BeforeExecute
-- Firebird4 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID


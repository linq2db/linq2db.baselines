-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeginTransactionAsync
-- Firebird.3 Firebird3
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


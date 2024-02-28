BeforeExecute
-- Firebird3 Firebird (asynchronously)
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
BeginTransaction
BeforeExecute
-- Firebird3 Firebird

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 1012
WHERE
	"Parent"."ParentID" = 1010

BeforeExecute
DisposeTransactionAsync
BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010


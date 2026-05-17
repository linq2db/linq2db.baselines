BeginTransactionAsync
-- Firebird.4 Firebird4
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

CommitTransactionAsync
-- Firebird.4 Firebird4

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = 1010


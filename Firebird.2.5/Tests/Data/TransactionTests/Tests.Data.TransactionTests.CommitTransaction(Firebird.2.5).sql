-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird

UPDATE
	"Parent" "t"
SET
	"Value1" = 1011
WHERE
	"t"."ParentID" = 1010

CommitTransaction
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010


-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	"Parent" "p"
SET
	"ParentID" = "p"."ParentID" + 1
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @p


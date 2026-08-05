-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1

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
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 1

-- Firebird.4 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = CAST(@Value1 AS Int)
WHERE
	"p"."ParentID" = @id

-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 2

-- Firebird.4 Firebird4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Parent" "p"
SET
	"Value1" = CAST(@Value1 AS Int)
WHERE
	"p"."ParentID" = @id

-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id AND "p"."Value1" = 3


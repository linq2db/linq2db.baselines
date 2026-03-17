-- Firebird.4 Firebird4

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- Firebird.4 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	CAST(@ParentID AS Int),
	1
)

-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = @id

-- Firebird.4 Firebird4

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000


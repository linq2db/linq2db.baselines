-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 1111,1111 FROM rdb$database UNION ALL
SELECT 2111,2111 FROM rdb$database UNION ALL
SELECT 3111,3111 FROM rdb$database UNION ALL
SELECT 4111,4111 FROM rdb$database

CommitTransaction
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID


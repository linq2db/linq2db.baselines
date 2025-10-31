-- Firebird.2.5 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

-- Firebird.2.5 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000


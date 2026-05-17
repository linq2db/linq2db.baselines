-- Firebird.3 Firebird3

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	CAST(@id AS Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11

-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

-- Firebird.3 Firebird3

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000


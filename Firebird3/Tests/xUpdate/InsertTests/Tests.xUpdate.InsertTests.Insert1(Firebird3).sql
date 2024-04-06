BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	CAST(@id AS Int)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000


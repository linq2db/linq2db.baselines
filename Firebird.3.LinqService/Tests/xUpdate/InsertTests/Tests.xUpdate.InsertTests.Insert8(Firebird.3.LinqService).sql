BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	@ParentID,
	@id
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000


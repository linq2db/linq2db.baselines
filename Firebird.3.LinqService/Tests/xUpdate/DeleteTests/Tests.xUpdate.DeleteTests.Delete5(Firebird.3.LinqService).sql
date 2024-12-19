BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000


-- SapHana.Native SapHana
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Native SapHana
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Native SapHana
DECLARE @values Integer -- Int32
SET     @values = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"values",
	1
)

-- SapHana.Native SapHana
DECLARE @values Integer -- Int32
SET     @values = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"values",
	1
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- SapHana.Native SapHana
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000


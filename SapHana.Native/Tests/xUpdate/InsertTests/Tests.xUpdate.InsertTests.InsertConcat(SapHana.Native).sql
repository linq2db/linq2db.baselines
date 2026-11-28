-- SapHana.Native SapHana
DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000

-- SapHana.Native SapHana
INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	"p"."ParentID" + 1000,
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
UNION ALL
SELECT
	"p_1"."ParentID" + 1000,
	"p_1"."Value1"
FROM
	"Parent" "p_1"
WHERE
	"p_1"."ParentID" = 2

-- SapHana.Native SapHana
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000
ORDER BY
	"p"."ParentID"

-- SapHana.Native SapHana
DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000


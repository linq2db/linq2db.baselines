-- Firebird.4 Firebird4
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	"x"."Value1" <> 1 OR "x"."Value1" IS NULL

-- Firebird.4 Firebird4
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	NOT ("x"."Value1" = 1 AND "x"."Value1" IS NOT NULL)

-- Firebird.4 Firebird4
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	NOT ("x"."Value1" = 1 AND "x"."Value1" IS NOT NULL)


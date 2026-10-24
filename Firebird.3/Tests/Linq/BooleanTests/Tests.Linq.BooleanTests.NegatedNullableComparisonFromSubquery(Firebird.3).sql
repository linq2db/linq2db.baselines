-- Firebird.3 Firebird3
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	"x"."Value1" <> 1 OR "x"."Value1" IS NULL

-- Firebird.3 Firebird3
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	NOT ("x"."Value1" = 1 AND "x"."Value1" IS NOT NULL)

-- Firebird.3 Firebird3
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	NOT ("x"."Value1" = 1 AND "x"."Value1" IS NOT NULL)


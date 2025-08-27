BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."String" = 'abc' THEN NULL
		ELSE "s"."String"
	END
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" = 'abc' OR "x"."String" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."String" = 'abc' OR "x"."String" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."String" = 'xyz' THEN NULL
		ELSE "s"."String"
	END
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" = 'xyz' OR "x"."String" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."String" = 'xyz' OR "x"."String" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."String"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."String" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."NullableString" = 'abc' THEN NULL
		ELSE "s"."NullableString"
	END
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" = 'abc' OR "x"."NullableString" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableString" = 'abc' OR "x"."NullableString" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."NullableString" = 'xyz' THEN NULL
		ELSE "s"."NullableString"
	END
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" = 'xyz' OR "x"."NullableString" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableString" = 'xyz' OR "x"."NullableString" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."NullableString"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableString" IS NOT NULL


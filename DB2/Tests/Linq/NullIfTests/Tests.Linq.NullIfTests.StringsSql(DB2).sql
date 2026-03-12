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

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" = 'abc' OR "s"."String" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."String" = 'abc' OR "s"."String" IS NULL)

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

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" = 'xyz' OR "s"."String" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."String" = 'xyz' OR "s"."String" IS NULL)

-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."String"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NOT NULL

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

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" = 'abc' OR "s"."NullableString" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableString" = 'abc' OR "s"."NullableString" IS NULL)

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

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" = 'xyz' OR "s"."NullableString" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableString" = 'xyz' OR "s"."NullableString" IS NULL)

-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."NullableString"
FROM
	"Src" "s"
ORDER BY
	"s"."Int"

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NOT NULL


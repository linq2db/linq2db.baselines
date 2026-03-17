-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."Int" = 2 THEN NULL
		ELSE "s"."Int"
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
	"s"."Int" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" <> 2

-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."Int" = 4 THEN NULL
		ELSE "s"."Int"
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
	"s"."Int" = 4

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" <> 4

-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Int"
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
	1 = 0

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"

-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."NullableInt" = 2 THEN NULL
		ELSE "s"."NullableInt"
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
	"s"."NullableInt" = 2 OR "s"."NullableInt" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableInt" = 2 OR "s"."NullableInt" IS NULL)

-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "s"."NullableInt" = 4 THEN NULL
		ELSE "s"."NullableInt"
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
	"s"."NullableInt" = 4 OR "s"."NullableInt" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT ("s"."NullableInt" = 4 OR "s"."NullableInt" IS NULL)

-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."NullableInt"
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
	"s"."NullableInt" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT NULL


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
	"Src" "x"
WHERE
	"x"."Int" = 2

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 2

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
	"Src" "x"
WHERE
	"x"."Int" = 4

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."Int" <> 4

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
	"Src" "x"
WHERE
	1 = 0

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"

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
	"Src" "x"
WHERE
	"x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 2 OR "x"."NullableInt" IS NULL)

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
	"Src" "x"
WHERE
	"x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	NOT ("x"."NullableInt" = 4 OR "x"."NullableInt" IS NULL)

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
	"Src" "x"
WHERE
	"x"."NullableInt" IS NULL

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Src" "x"
WHERE
	"x"."NullableInt" IS NOT NULL


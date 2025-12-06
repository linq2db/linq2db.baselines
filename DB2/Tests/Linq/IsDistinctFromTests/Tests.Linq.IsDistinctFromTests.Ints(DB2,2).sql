-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS DISTINCT FROM @value

-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS DISTINCT FROM @value

-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT DISTINCT FROM @value

-- DB2 DB2.LUW DB2LUW
DECLARE @value Integer(4) -- Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT DISTINCT FROM @value


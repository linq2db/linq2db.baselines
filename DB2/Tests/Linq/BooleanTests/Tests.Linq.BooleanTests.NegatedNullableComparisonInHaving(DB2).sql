-- DB2 DB2.LUW DB2LUW
SELECT DISTINCT
	Mod("g_1"."ParentID", 3)
FROM
	"Parent" "g_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "x"
		WHERE
			Mod("g_1"."ParentID", 3) = Mod("x"."ParentID", 3) AND
			("x"."Value1" <> 1 OR "x"."Value1" IS NULL)
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."Key_1",
	COUNT(CASE
		WHEN "g_2"."c1" = 0 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			Mod("g_1"."ParentID", 2) as "Key_1",
			CASE
				WHEN "g_1"."Value1" = 1 THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Parent" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Key_1"
HAVING
	COUNT(CASE
		WHEN "g_2"."c1" = 0 THEN 1
		ELSE NULL
	END) > 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"


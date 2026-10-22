-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("t"."Kind" = 1 OR "t"."Kind" = 2 AS smallint),
	"t"."Kind",
	Substr("t"."ItemCode", 1, 2),
	"t"."Color",
	Substr("t"."ItemCode", 3, 2),
	"t"."Style",
	CAST("t"."Kind" = 1 OR "t"."Kind" = 3 AS smallint),
	Substr("t"."ItemCode", 5, 2),
	Substr("t"."ItemCode", 7, 2)
FROM
	"Item" "t"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"x_1"."c2",
	"x_1"."Kind",
	"x_1"."ItemCode",
	"x_1"."Color",
	"x_1"."ItemCode_2",
	"x_1"."Style_1",
	"x_1"."c4",
	"x_1"."ItemCode_1",
	"x_1"."ItemCode_3"
FROM
	(
		SELECT
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c2",
			CAST("x"."Kind" = 1 AS smallint) as "c3",
			Substr("x"."ItemCode", 1, 2) as "ItemCode",
			"x"."Color",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "c4",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 3, 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."c1" AND ("x_1"."c2" AND "x_1"."c3" OR NOT "x_1"."c2") OR NOT "x_1"."c1" AND NOT "x_1"."c4")

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"x_1"."c2",
	"x_1"."Kind",
	"x_1"."ItemCode",
	"x_1"."Color",
	"x_1"."ItemCode_2",
	"x_1"."Style_1",
	"x_1"."c4",
	"x_1"."ItemCode_1",
	"x_1"."ItemCode_3"
FROM
	(
		SELECT
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c2",
			CAST("x"."Kind" = 1 AS smallint) as "c3",
			Substr("x"."ItemCode", 1, 2) as "ItemCode",
			"x"."Color",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "c4",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 3, 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."c1" AND ("x_1"."c2" AND "x_1"."c3" OR NOT "x_1"."c2") OR
	NOT "x_1"."c1" AND NOT "x_1"."c4"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"x_1"."c2",
	"x_1"."Kind",
	"x_1"."ItemCode_2",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Style_1",
	"x_1"."c3",
	"x_1"."ItemCode_3",
	"x_1"."ItemCode_1"
FROM
	(
		SELECT
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c2",
			Substr("x"."ItemCode", 3, 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "c3",
			CAST("x"."Kind" = 1 AS smallint) as "c4",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 1, 2) as "ItemCode_2",
			"x"."Color",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT (NOT "x_1"."c1" AND ("x_1"."c3" AND "x_1"."c4" OR NOT "x_1"."c3"))

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"x_1"."c2",
	"x_1"."Kind",
	"x_1"."ItemCode_2",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Style_1",
	"x_1"."c3",
	"x_1"."ItemCode_3",
	"x_1"."ItemCode_1"
FROM
	(
		SELECT
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "c2",
			Substr("x"."ItemCode", 3, 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "c3",
			CAST("x"."Kind" = 1 AS smallint) as "c4",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 1, 2) as "ItemCode_2",
			"x"."Color",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT "x_1"."c1" AND ("x_1"."c3" AND "x_1"."c4" OR NOT "x_1"."c3")

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"


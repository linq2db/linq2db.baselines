BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint),
	"x"."Kind",
	Substr("x"."ItemCode", 1, 2),
	"x"."Color",
	Substr("x"."ItemCode", 3, 2),
	"x"."Style"
FROM
	"Item" "x"
WHERE
	("x"."Kind" = 1 OR "x"."Kind" = 2) AND "x"."Kind" <> 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."cond",
	"x"."ItemCode",
	"x"."Color",
	"x"."Kind",
	"x"."ItemCode_1",
	"x"."Style_1"
FROM
	(
		SELECT
			CAST("i"."Kind" = 1 OR "i"."Kind" = 3 AS smallint) as "cond",
			Substr("i"."ItemCode", 5, 2) as "ItemCode",
			"i"."Color",
			"i"."Kind",
			Substr("i"."ItemCode", 7, 2) as "ItemCode_1",
			"i"."Style" as "Style_1"
		FROM
			"Item" "i"
		WHERE
			"i"."Kind" = 1 OR "i"."Kind" = 3
	) "x"
WHERE
	"x"."cond"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."cond",
	"t1"."Color",
	"t1"."ItemCode",
	"t1"."Name",
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS NVarChar(255)),
	"t1"."ItemCode_1",
	"t1"."Name_1",
	CAST(NULL AS smallint),
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS NVarChar(255))
FROM
	(
		SELECT
			CAST("t"."Kind" = 1 OR "t"."Kind" = 2 AS smallint) as "cond",
			Substr("t"."ItemCode", 1, 2) as "ItemCode",
			"t"."Color" as "Name",
			Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
			"t"."Style" as "Name_1",
			CAST("t"."Kind" = 1 AS smallint) as "Color"
		FROM
			"Item" "t"
	) "t1"
WHERE
	"t1"."cond"
UNION ALL
SELECT
	"t2"."cond",
	CAST(NULL AS smallint),
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS NVarChar(255)),
	"t2"."ItemCode",
	"t2"."Color",
	CAST(NULL AS NVarChar(255)),
	CAST(NULL AS NVarChar(255)),
	"t2"."cond_1",
	"t2"."ItemCode_1",
	"t2"."Style_1"
FROM
	(
		SELECT
			CAST("t_1"."Kind" = 1 OR "t_1"."Kind" = 3 AS smallint) as "cond",
			Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
			"t_1"."Color",
			Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
			"t_1"."Style" as "Style_1",
			CAST("t_1"."Kind" = 1 AS smallint) as "cond_1"
		FROM
			"Item" "t_1"
	) "t2"
WHERE
	"t2"."cond"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x_1"."Color",
	"x_1"."Color_1",
	"x_1"."ItemCode",
	"x_1"."Name",
	"x_1"."ItemCode_2",
	"x_1"."Name_2",
	"x_1"."ItemCode_1",
	"x_1"."Name_1",
	"x_1"."Size_1",
	"x_1"."ItemCode_3",
	"x_1"."Name_3"
FROM
	(
		SELECT
			"x"."cond" as "Color",
			"x"."cond_1" as "Color_1",
			"x"."ItemCode",
			"x"."Color" as "Name",
			"x"."ItemCode_1",
			"x"."Style_1" as "Name_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode_2",
			CAST(NULL AS NVarChar(255)) as "Name_2",
			CAST(NULL AS smallint) as "Size_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode_3",
			CAST(NULL AS NVarChar(255)) as "Name_3"
		FROM
			(
				SELECT
					CAST("t"."Kind" = 1 OR "t"."Kind" = 2 AS smallint) as "cond",
					Substr("t"."ItemCode", 1, 2) as "ItemCode",
					"t"."Color",
					Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CAST("t"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Color",
			CAST(NULL AS smallint) as "Color_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode",
			CAST(NULL AS NVarChar(255)) as "Name",
			CAST(NULL AS NVarChar(255)) as "ItemCode_1",
			CAST(NULL AS NVarChar(255)) as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_1",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CAST("t_1"."Kind" = 1 OR "t_1"."Kind" = 3 AS smallint) as "cond",
					Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
					"t_1"."Color",
					Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CAST("t_1"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	NOT ("x_1"."Color_1" IS NOT NULL AND "x_1"."Color_1")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x_1"."Color",
	"x_1"."Color_1",
	"x_1"."ItemCode",
	"x_1"."Name",
	"x_1"."ItemCode_2",
	"x_1"."Name_2",
	"x_1"."ItemCode_1",
	"x_1"."Name_1",
	"x_1"."Size_1",
	"x_1"."ItemCode_3",
	"x_1"."Name_3"
FROM
	(
		SELECT
			"x"."cond" as "Color",
			"x"."cond_1" as "Color_1",
			"x"."ItemCode",
			"x"."Color" as "Name",
			"x"."ItemCode_1",
			"x"."Style_1" as "Name_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode_2",
			CAST(NULL AS NVarChar(255)) as "Name_2",
			CAST(NULL AS smallint) as "Size_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode_3",
			CAST(NULL AS NVarChar(255)) as "Name_3"
		FROM
			(
				SELECT
					CAST("t"."Kind" = 1 OR "t"."Kind" = 2 AS smallint) as "cond",
					Substr("t"."ItemCode", 1, 2) as "ItemCode",
					"t"."Color",
					Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CAST("t"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Color",
			CAST(NULL AS smallint) as "Color_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode",
			CAST(NULL AS NVarChar(255)) as "Name",
			CAST(NULL AS NVarChar(255)) as "ItemCode_1",
			CAST(NULL AS NVarChar(255)) as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_1",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CAST("t_1"."Kind" = 1 OR "t_1"."Kind" = 3 AS smallint) as "cond",
					Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
					"t_1"."Color",
					Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CAST("t_1"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	"x_1"."Color_1" IS NOT NULL AND "x_1"."Color_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x_1"."Size_1",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Name",
	"x_1"."ItemCode_2",
	"x_1"."Name_2",
	"x_1"."ItemCode_1",
	"x_1"."Name_1",
	"x_1"."Size_2",
	"x_1"."ItemCode_3",
	"x_1"."Name_3"
FROM
	(
		SELECT
			"x"."cond" as "Size_1",
			"x"."cond_1" as "Color",
			"x"."ItemCode",
			"x"."Color" as "Name",
			"x"."ItemCode_1",
			"x"."Style_1" as "Name_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode_2",
			CAST(NULL AS NVarChar(255)) as "Name_2",
			CAST(NULL AS smallint) as "Size_2",
			CAST(NULL AS NVarChar(255)) as "ItemCode_3",
			CAST(NULL AS NVarChar(255)) as "Name_3"
		FROM
			(
				SELECT
					CAST("t"."Kind" = 1 OR "t"."Kind" = 2 AS smallint) as "cond",
					Substr("t"."ItemCode", 1, 2) as "ItemCode",
					"t"."Color",
					Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CAST("t"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Size_1",
			CAST(NULL AS smallint) as "Color",
			CAST(NULL AS NVarChar(255)) as "ItemCode",
			CAST(NULL AS NVarChar(255)) as "Name",
			CAST(NULL AS NVarChar(255)) as "ItemCode_1",
			CAST(NULL AS NVarChar(255)) as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_2",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CAST("t_1"."Kind" = 1 OR "t_1"."Kind" = 3 AS smallint) as "cond",
					Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
					"t_1"."Color",
					Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CAST("t_1"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	NOT ("x_1"."Color" IS NULL AND "x_1"."Size_2")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x_1"."Size_1",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Name",
	"x_1"."ItemCode_2",
	"x_1"."Name_2",
	"x_1"."ItemCode_1",
	"x_1"."Name_1",
	"x_1"."Size_2",
	"x_1"."ItemCode_3",
	"x_1"."Name_3"
FROM
	(
		SELECT
			"x"."cond" as "Size_1",
			"x"."cond_1" as "Color",
			"x"."ItemCode",
			"x"."Color" as "Name",
			"x"."ItemCode_1",
			"x"."Style_1" as "Name_1",
			CAST(NULL AS NVarChar(255)) as "ItemCode_2",
			CAST(NULL AS NVarChar(255)) as "Name_2",
			CAST(NULL AS smallint) as "Size_2",
			CAST(NULL AS NVarChar(255)) as "ItemCode_3",
			CAST(NULL AS NVarChar(255)) as "Name_3"
		FROM
			(
				SELECT
					CAST("t"."Kind" = 1 OR "t"."Kind" = 2 AS smallint) as "cond",
					Substr("t"."ItemCode", 1, 2) as "ItemCode",
					"t"."Color",
					Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CAST("t"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Size_1",
			CAST(NULL AS smallint) as "Color",
			CAST(NULL AS NVarChar(255)) as "ItemCode",
			CAST(NULL AS NVarChar(255)) as "Name",
			CAST(NULL AS NVarChar(255)) as "ItemCode_1",
			CAST(NULL AS NVarChar(255)) as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_2",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CAST("t_1"."Kind" = 1 OR "t_1"."Kind" = 3 AS smallint) as "cond",
					Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
					"t_1"."Color",
					Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CAST("t_1"."Kind" = 1 AS smallint) as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	"x_1"."Color" IS NULL AND "x_1"."Size_2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"


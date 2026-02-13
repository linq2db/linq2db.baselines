-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN '1'
		ELSE '0'
	END,
	"t"."Kind",
	Substring("t"."ItemCode" from 1 for 2),
	"t"."Color",
	Substring("t"."ItemCode" from 3 for 2),
	"t"."Style",
	CASE
		WHEN "t"."Kind" = 1 OR "t"."Kind" = 3 THEN '1'
		ELSE '0'
	END,
	Substring("t"."ItemCode" from 5 for 2),
	Substring("t"."ItemCode" from 7 for 2)
FROM
	"Item" "t"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird

SELECT
	"x_1"."Color_1",
	"x_1"."Kind",
	"x_1"."ItemCode",
	"x_1"."Color_3",
	"x_1"."ItemCode_2",
	"x_1"."Style_1",
	"x_1"."Color_4",
	"x_1"."ItemCode_1",
	"x_1"."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Color",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Color_1",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "Color_2",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode",
			"x"."Color" as "Color_3",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "Color_4",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."Color" = '1' AND ("x_1"."Color_1" = '1' AND "x_1"."Color_2" = '1' OR "x_1"."Color_1" = '0') OR "x_1"."Color" = '0' AND "x_1"."Color_4" = '0')

-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird

SELECT
	"x_1"."Color_1",
	"x_1"."Kind",
	"x_1"."ItemCode",
	"x_1"."Color_3",
	"x_1"."ItemCode_2",
	"x_1"."Style_1",
	"x_1"."Color_4",
	"x_1"."ItemCode_1",
	"x_1"."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Color",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Color_1",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "Color_2",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode",
			"x"."Color" as "Color_3",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "Color_4",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."Color" = '1' AND ("x_1"."Color_1" = '1' AND "x_1"."Color_2" = '1' OR "x_1"."Color_1" = '0') OR
	"x_1"."Color" = '0' AND "x_1"."Color_4" = '0'

-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird

SELECT
	"x_1"."Size_2",
	"x_1"."Kind",
	"x_1"."ItemCode_2",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Style_1",
	"x_1"."Size_3",
	"x_1"."ItemCode_3",
	"x_1"."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Size_1",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Size_2",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "Size_3",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "Size_4",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode_2",
			"x"."Color",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."Size_1" = '1' AND "x_1"."Size_2" = '0' OR "x_1"."Size_1" = '0' AND ("x_1"."Size_3" = '1' AND "x_1"."Size_4" = '1' OR "x_1"."Size_3" = '0'))

-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

-- Firebird.2.5 Firebird

SELECT
	"x_1"."Size_2",
	"x_1"."Kind",
	"x_1"."ItemCode_2",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Style_1",
	"x_1"."Size_3",
	"x_1"."ItemCode_3",
	"x_1"."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Size_1",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "Size_2",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "Size_3",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "Size_4",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode_2",
			"x"."Color",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."Size_1" = '1' AND "x_1"."Size_2" = '0' OR "x_1"."Size_1" = '0' AND ("x_1"."Size_3" = '1' AND "x_1"."Size_4" = '1' OR "x_1"."Size_3" = '0')

-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"


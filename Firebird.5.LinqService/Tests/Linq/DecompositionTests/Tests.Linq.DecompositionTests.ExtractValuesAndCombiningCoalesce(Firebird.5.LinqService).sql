BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Kind" = 1 OR "t"."Kind" = 2,
	"t"."Kind",
	Substring("t"."ItemCode" from 1 for 2),
	"t"."Color",
	Substring("t"."ItemCode" from 3 for 2),
	"t"."Style",
	"t"."Kind" = 1 OR "t"."Kind" = 3,
	Substring("t"."ItemCode" from 5 for 2),
	Substring("t"."ItemCode" from 7 for 2)
FROM
	"Item" "t"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x_1"."cond_1",
	"x_1"."Kind",
	"x_1"."ItemCode",
	"x_1"."Color",
	"x_1"."ItemCode_2",
	"x_1"."Style_1",
	"x_1"."cond_3",
	"x_1"."ItemCode_1",
	"x_1"."ItemCode_3"
FROM
	(
		SELECT
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond",
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond_1",
			"x"."Kind" = 1 as "cond_2",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode",
			"x"."Color",
			"x"."Kind" = 1 OR "x"."Kind" = 3 as "cond_3",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."cond" AND "x_1"."cond_2" OR NOT "x_1"."cond" AND NOT "x_1"."cond_3")

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x_1"."cond_1",
	"x_1"."Kind",
	"x_1"."ItemCode",
	"x_1"."Color",
	"x_1"."ItemCode_2",
	"x_1"."Style_1",
	"x_1"."cond_3",
	"x_1"."ItemCode_1",
	"x_1"."ItemCode_3"
FROM
	(
		SELECT
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond",
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond_1",
			"x"."Kind" = 1 as "cond_2",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode",
			"x"."Color",
			"x"."Kind" = 1 OR "x"."Kind" = 3 as "cond_3",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."cond" AND "x_1"."cond_2" OR NOT "x_1"."cond" AND NOT "x_1"."cond_3"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x_1"."cond_1",
	"x_1"."Kind",
	"x_1"."ItemCode_2",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Style_1",
	"x_1"."cond_2",
	"x_1"."ItemCode_3",
	"x_1"."ItemCode_1"
FROM
	(
		SELECT
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond",
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond_1",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode",
			"x"."Style" as "Style_1",
			"x"."Kind" = 1 OR "x"."Kind" = 3 as "cond_2",
			"x"."Kind" = 1 as "cond_3",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode_2",
			"x"."Color",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT (NOT "x_1"."cond" AND "x_1"."cond_3")

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x_1"."cond_1",
	"x_1"."Kind",
	"x_1"."ItemCode_2",
	"x_1"."Color",
	"x_1"."ItemCode",
	"x_1"."Style_1",
	"x_1"."cond_2",
	"x_1"."ItemCode_3",
	"x_1"."ItemCode_1"
FROM
	(
		SELECT
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond",
			"x"."Kind" = 1 OR "x"."Kind" = 2 as "cond_1",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode",
			"x"."Style" as "Style_1",
			"x"."Kind" = 1 OR "x"."Kind" = 3 as "cond_2",
			"x"."Kind" = 1 as "cond_3",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode_2",
			"x"."Color",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT "x_1"."cond" AND "x_1"."cond_3"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"


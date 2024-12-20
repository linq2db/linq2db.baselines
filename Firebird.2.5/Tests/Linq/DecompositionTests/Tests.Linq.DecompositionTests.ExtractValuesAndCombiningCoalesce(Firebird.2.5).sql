BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Item"
			(
				"ItemId"   Int                                    NOT NULL,
				"Kind"     Int                                    NOT NULL,
				"ItemCode" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Style"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Color"    VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Item" PRIMARY KEY ("ItemId")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
SELECT 1,1,CAST('01020102' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Style1' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('White' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,1,'01020102','Style1','White' FROM rdb$database UNION ALL
SELECT 3,1,'01020102','Style1','White' FROM rdb$database UNION ALL
SELECT 4,2,'03020302','Style3','White' FROM rdb$database UNION ALL
SELECT 5,2,'01040104','Style1','Blue' FROM rdb$database UNION ALL
SELECT 6,2,'01010104','Style1','Black' FROM rdb$database UNION ALL
SELECT 7,3,'03020302','Style3','White' FROM rdb$database UNION ALL
SELECT 8,3,'01040104','Style1','Blue' FROM rdb$database UNION ALL
SELECT 9,3,'01010104','Style1','Black' FROM rdb$database

BeforeExecute
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

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

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
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond_1",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "cond_2",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode",
			"x"."Color",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "cond_3",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."cond" = '1' AND ("x_1"."cond_1" = '1' AND "x_1"."cond_2" = '1' OR "x_1"."cond_1" = '0') OR "x_1"."cond" = '0' AND "x_1"."cond_3" = '0')

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

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
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond_1",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "cond_2",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode",
			"x"."Color",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "cond_3",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."cond" = '1' AND ("x_1"."cond_1" = '1' AND "x_1"."cond_2" = '1' OR "x_1"."cond_1" = '0') OR
	"x_1"."cond" = '0' AND "x_1"."cond_3" = '0'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

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
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond_1",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "cond_2",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "cond_3",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode_2",
			"x"."Color",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."cond" = '1' AND "x_1"."cond_1" = '0' OR "x_1"."cond" = '0' AND ("x_1"."cond_2" = '1' AND "x_1"."cond_3" = '1' OR "x_1"."cond_2" = '0'))

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

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
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond_1",
			Substring("x"."ItemCode" from 3 for 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CASE
				WHEN "x"."Kind" = 1 OR "x"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "cond_2",
			CASE
				WHEN "x"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "cond_3",
			Substring("x"."ItemCode" from 7 for 2) as "ItemCode_1",
			"x"."Kind",
			Substring("x"."ItemCode" from 1 for 2) as "ItemCode_2",
			"x"."Color",
			Substring("x"."ItemCode" from 5 for 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."cond" = '1' AND "x_1"."cond_1" = '0' OR "x_1"."cond" = '0' AND ("x_1"."cond_2" = '1' AND "x_1"."cond_3" = '1' OR "x_1"."cond_2" = '0')

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END


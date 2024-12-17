BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	"x"."cond",
	"x"."Kind",
	"x"."ItemCode",
	"x"."Color",
	"x"."ItemCode_1",
	"x"."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN "i"."Kind" = 1 OR "i"."Kind" = 2 THEN TRUE
				ELSE FALSE
			END as "cond",
			CASE
				WHEN "i"."Kind" = 1 THEN TRUE
				ELSE FALSE
			END as "cond_1",
			Substring("i"."ItemCode" from 1 for 2) as "ItemCode",
			"i"."Color",
			"i"."Kind",
			Substring("i"."ItemCode" from 3 for 2) as "ItemCode_1",
			"i"."Style" as "Style_1"
		FROM
			"Item" "i"
		WHERE
			"i"."Kind" = 1 OR "i"."Kind" = 2
	) "x"
WHERE
	NOT ("x"."cond" AND "x"."cond_1" OR NOT "x"."cond")

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

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
			CASE
				WHEN "i"."Kind" = 1 OR "i"."Kind" = 3 THEN TRUE
				ELSE FALSE
			END as "cond",
			Substring("i"."ItemCode" from 5 for 2) as "ItemCode",
			"i"."Color",
			"i"."Kind",
			Substring("i"."ItemCode" from 7 for 2) as "ItemCode_1",
			"i"."Style" as "Style_1"
		FROM
			"Item" "i"
		WHERE
			"i"."Kind" = 1 OR "i"."Kind" = 3
	) "x"
WHERE
	"x"."cond"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."cond",
	"t1"."Color",
	"t1"."ItemCode",
	"t1"."Name",
	NULL,
	NULL,
	"t1"."ItemCode_1",
	"t1"."Name_1",
	NULL,
	NULL,
	NULL
FROM
	(
		SELECT
			CASE
				WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN TRUE
				ELSE FALSE
			END as "cond",
			Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
			"t"."Color" as "Name",
			Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
			"t"."Style" as "Name_1",
			CASE
				WHEN "t"."Kind" = 1 THEN TRUE
				ELSE FALSE
			END as "Color"
		FROM
			"Item" "t"
	) "t1"
WHERE
	"t1"."cond"
UNION ALL
SELECT
	"t2"."cond",
	NULL,
	NULL,
	NULL,
	"t2"."ItemCode",
	"t2"."Color",
	NULL,
	NULL,
	"t2"."cond_1",
	"t2"."ItemCode_1",
	"t2"."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN TRUE
				ELSE FALSE
			END as "cond",
			Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
			"t_1"."Color",
			Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
			"t_1"."Style" as "Style_1",
			CASE
				WHEN "t_1"."Kind" = 1 THEN TRUE
				ELSE FALSE
			END as "cond_1"
		FROM
			"Item" "t_1"
	) "t2"
WHERE
	"t2"."cond"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

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
			NULL as "ItemCode_2",
			NULL as "Name_2",
			NULL as "Size_1",
			NULL as "ItemCode_3",
			NULL as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Color",
			NULL as "Color_1",
			NULL as "ItemCode",
			NULL as "Name",
			NULL as "ItemCode_1",
			NULL as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_1",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	NOT ("x_1"."Color" AND "x_1"."Color_1" IS NOT NULL AND "x_1"."Color_1" OR NOT "x_1"."Color")

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

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
			NULL as "ItemCode_2",
			NULL as "Name_2",
			NULL as "Size_1",
			NULL as "ItemCode_3",
			NULL as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Color",
			NULL as "Color_1",
			NULL as "ItemCode",
			NULL as "Name",
			NULL as "ItemCode_1",
			NULL as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_1",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	"x_1"."Color" AND "x_1"."Color_1" IS NOT NULL AND "x_1"."Color_1" OR
	NOT "x_1"."Color"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

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
			NULL as "ItemCode_2",
			NULL as "Name_2",
			NULL as "Size_2",
			NULL as "ItemCode_3",
			NULL as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Size_1",
			NULL as "Color",
			NULL as "ItemCode",
			NULL as "Name",
			NULL as "ItemCode_1",
			NULL as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_2",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	NOT ("x_1"."Size_1" AND "x_1"."Color" IS NULL AND "x_1"."Size_2" OR NOT "x_1"."Size_1")

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

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
			NULL as "ItemCode_2",
			NULL as "Name_2",
			NULL as "Size_2",
			NULL as "ItemCode_3",
			NULL as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond"
		UNION ALL
		SELECT
			"t1"."cond" as "Size_1",
			NULL as "Color",
			NULL as "ItemCode",
			NULL as "Name",
			NULL as "ItemCode_1",
			NULL as "Name_1",
			"t1"."ItemCode" as "ItemCode_2",
			"t1"."Color" as "Name_2",
			"t1"."cond_1" as "Size_2",
			"t1"."ItemCode_1" as "ItemCode_3",
			"t1"."Style_1" as "Name_3"
		FROM
			(
				SELECT
					CASE
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN TRUE
						ELSE FALSE
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN TRUE
						ELSE FALSE
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond"
	) "x_1"
WHERE
	"x_1"."Size_1" AND "x_1"."Color" IS NULL AND "x_1"."Size_2" OR
	NOT "x_1"."Size_1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END


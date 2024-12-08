BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
	NOT ("x"."cond" AND "x"."cond_1")

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x_2"."Color",
	"x_2"."Color_1",
	"x_2"."ItemCode",
	"x_2"."Name",
	"x_2"."ItemCode_1",
	"x_2"."Name_1",
	"x_2"."ItemCode_2",
	"x_2"."Name_2",
	"x_2"."Size_1",
	"x_2"."ItemCode_3",
	"x_2"."Name_3"
FROM
	(
		SELECT
			"x_1"."cond" as "Color",
			CASE
				WHEN "x_1"."Color" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond",
			"x_1"."Color" as "Color_1",
			"x_1"."ItemCode",
			"x_1"."Name",
			"x_1"."c1" as "ItemCode_1",
			"x_1"."c2" as "Name_1",
			"x_1"."ItemCode_1" as "ItemCode_2",
			"x_1"."Name_1" as "Name_2",
			"x_1"."c3" as "Size_1",
			"x_1"."c4" as "ItemCode_3",
			"x_1"."c5" as "Name_3"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1" as "Color",
					"x"."ItemCode",
					"x"."Color" as "Name",
					"x"."ItemCode_1",
					"x"."Style_1" as "Name_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
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
					"t1"."cond",
					NULL as "Color",
					NULL as "ItemCode",
					NULL as "Name",
					NULL as "ItemCode_1",
					NULL as "Name_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
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
	) "x_2"
WHERE
	NOT ("x_2"."Color" AND "x_2"."cond") OR NOT ("x_2"."Color" AND "x_2"."cond" AND "x_2"."Color_1")

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x_2"."Color",
	"x_2"."Color_1",
	"x_2"."ItemCode",
	"x_2"."Name",
	"x_2"."ItemCode_1",
	"x_2"."Name_1",
	"x_2"."ItemCode_2",
	"x_2"."Name_2",
	"x_2"."Size_1",
	"x_2"."ItemCode_3",
	"x_2"."Name_3"
FROM
	(
		SELECT
			"x_1"."cond" as "Color",
			CASE
				WHEN "x_1"."Color" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond",
			"x_1"."Color" as "Color_1",
			"x_1"."ItemCode",
			"x_1"."Name",
			"x_1"."c1" as "ItemCode_1",
			"x_1"."c2" as "Name_1",
			"x_1"."ItemCode_1" as "ItemCode_2",
			"x_1"."Name_1" as "Name_2",
			"x_1"."c3" as "Size_1",
			"x_1"."c4" as "ItemCode_3",
			"x_1"."c5" as "Name_3"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1" as "Color",
					"x"."ItemCode",
					"x"."Color" as "Name",
					"x"."ItemCode_1",
					"x"."Style_1" as "Name_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
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
					"t1"."cond",
					NULL as "Color",
					NULL as "ItemCode",
					NULL as "Name",
					NULL as "ItemCode_1",
					NULL as "Name_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
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
	) "x_2"
WHERE
	"x_2"."Color" AND
	"x_2"."cond" AND
	"x_2"."Color" AND
	"x_2"."cond" AND
	"x_2"."Color_1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x_2"."Size_1",
	"x_2"."Color",
	"x_2"."ItemCode_2",
	"x_2"."Name_2",
	"x_2"."ItemCode_3",
	"x_2"."Name_3",
	"x_2"."ItemCode",
	"x_2"."Name",
	"x_2"."Size_2",
	"x_2"."ItemCode_1",
	"x_2"."Name_1"
FROM
	(
		SELECT
			"x_1"."cond" as "Size_1",
			CASE
				WHEN "x_1"."Color" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond",
			"x_1"."ItemCode_1" as "ItemCode",
			"x_1"."Name_1" as "Name",
			"x_1"."c3" as "Size_2",
			"x_1"."c4" as "ItemCode_1",
			"x_1"."c5" as "Name_1",
			"x_1"."Color",
			"x_1"."ItemCode" as "ItemCode_2",
			"x_1"."Name" as "Name_2",
			"x_1"."c1" as "ItemCode_3",
			"x_1"."c2" as "Name_3"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1" as "Color",
					"x"."ItemCode",
					"x"."Color" as "Name",
					"x"."ItemCode_1",
					"x"."Style_1" as "Name_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
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
					"t1"."cond",
					NULL as "Color",
					NULL as "ItemCode",
					NULL as "Name",
					NULL as "ItemCode_1",
					NULL as "Name_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
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
	) "x_2"
WHERE
	NOT ("x_2"."Size_1" AND NOT "x_2"."cond") OR NOT ("x_2"."Size_1" AND NOT "x_2"."cond" AND "x_2"."Size_2")

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x_2"."Size_1",
	"x_2"."Color",
	"x_2"."ItemCode_2",
	"x_2"."Name_2",
	"x_2"."ItemCode_3",
	"x_2"."Name_3",
	"x_2"."ItemCode",
	"x_2"."Name",
	"x_2"."Size_2",
	"x_2"."ItemCode_1",
	"x_2"."Name_1"
FROM
	(
		SELECT
			"x_1"."cond" as "Size_1",
			CASE
				WHEN "x_1"."Color" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond",
			"x_1"."ItemCode_1" as "ItemCode",
			"x_1"."Name_1" as "Name",
			"x_1"."c3" as "Size_2",
			"x_1"."c4" as "ItemCode_1",
			"x_1"."c5" as "Name_1",
			"x_1"."Color",
			"x_1"."ItemCode" as "ItemCode_2",
			"x_1"."Name" as "Name_2",
			"x_1"."c1" as "ItemCode_3",
			"x_1"."c2" as "Name_3"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1" as "Color",
					"x"."ItemCode",
					"x"."Color" as "Name",
					"x"."ItemCode_1",
					"x"."Style_1" as "Name_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
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
					"t1"."cond",
					NULL as "Color",
					NULL as "ItemCode",
					NULL as "Name",
					NULL as "ItemCode_1",
					NULL as "Name_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
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
	) "x_2"
WHERE
	"x_2"."Size_1" AND
	NOT "x_2"."cond" AND
	"x_2"."Size_1" AND
	NOT "x_2"."cond" AND
	"x_2"."Size_2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ItemId",
	"t1"."Kind",
	"t1"."ItemCode",
	"t1"."Style",
	"t1"."Color"
FROM
	"Item" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END


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
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 1
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'White'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 2
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'White'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 3
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'White'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 4
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style3'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'White'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 5
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(4) -- String
SET     @Color = 'Blue'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 6
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'Black'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 7
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style3'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'White'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 8
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(4) -- String
SET     @Color = 'Blue'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 9
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode VarChar(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style VarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarChar(5) -- String
SET     @Color = 'Black'

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Firebird.2.5 Firebird

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
				WHEN "i"."Kind" = 1 OR "i"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond",
			CASE
				WHEN "i"."Kind" = 1 THEN '1'
				ELSE '0'
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
	NOT ("x"."cond" = '1' AND "x"."cond_1" = '1' OR "x"."cond" = '0')

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
				WHEN "i"."Kind" = 1 OR "i"."Kind" = 3 THEN '1'
				ELSE '0'
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
	"x"."cond" = '1'

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
				WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN '1'
				ELSE '0'
			END as "cond",
			Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
			"t"."Color" as "Name",
			Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
			"t"."Style" as "Name_1",
			CASE
				WHEN "t"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "Color"
		FROM
			"Item" "t"
	) "t1"
WHERE
	"t1"."cond" = '1'
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
				WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN '1'
				ELSE '0'
			END as "cond",
			Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
			"t_1"."Color",
			Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
			"t_1"."Style" as "Style_1",
			CASE
				WHEN "t_1"."Kind" = 1 THEN '1'
				ELSE '0'
			END as "cond_1"
		FROM
			"Item" "t_1"
	) "t2"
WHERE
	"t2"."cond" = '1'

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
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond" = '1'
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
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond" = '1'
	) "x_1"
WHERE
	NOT ("x_1"."Color" = '1' AND "x_1"."Color_1" IS NOT NULL AND "x_1"."Color_1" = '1' AND "x_1"."Color_1" IS NOT NULL OR "x_1"."Color" = '0')

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
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond" = '1'
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
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond" = '1'
	) "x_1"
WHERE
	"x_1"."Color" = '1' AND "x_1"."Color_1" IS NOT NULL AND "x_1"."Color_1" = '1' OR
	"x_1"."Color" = '0'

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
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond" = '1'
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
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond" = '1'
	) "x_1"
WHERE
	NOT ("x_1"."Size_1" = '1' AND "x_1"."Color" IS NULL AND "x_1"."Size_2" = '1' AND "x_1"."Size_2" IS NOT NULL OR "x_1"."Size_1" = '0')

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
						WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t"."ItemCode" from 1 for 2) as "ItemCode",
					"t"."Color",
					Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
					"t"."Style" as "Style_1",
					CASE
						WHEN "t"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t"
			) "x"
		WHERE
			"x"."cond" = '1'
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
						WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN '1'
						ELSE '0'
					END as "cond",
					Substring("t_1"."ItemCode" from 5 for 2) as "ItemCode",
					"t_1"."Color",
					Substring("t_1"."ItemCode" from 7 for 2) as "ItemCode_1",
					"t_1"."Style" as "Style_1",
					CASE
						WHEN "t_1"."Kind" = 1 THEN '1'
						ELSE '0'
					END as "cond_1"
				FROM
					"Item" "t_1"
			) "t1"
		WHERE
			"t1"."cond" = '1'
	) "x_1"
WHERE
	"x_1"."Size_1" = '1' AND "x_1"."Color" IS NULL AND "x_1"."Size_2" = '1' OR
	"x_1"."Size_1" = '0'

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


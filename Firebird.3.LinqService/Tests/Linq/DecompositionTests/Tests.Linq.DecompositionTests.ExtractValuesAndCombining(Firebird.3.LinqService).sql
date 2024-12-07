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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
	"t1"."cond_1",
	"t1"."ItemCode",
	"t1"."Color",
	NULL,
	NULL,
	"t1"."ItemCode_1",
	"t1"."Style_1",
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
			"t"."Color",
			Substring("t"."ItemCode" from 3 for 2) as "ItemCode_1",
			"t"."Style" as "Style_1",
			CASE
				WHEN "t"."Kind" = 1 THEN TRUE
				ELSE FALSE
			END as "cond_1"
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
	"x_2"."cond",
	"x_2"."cond_1_1",
	"x_2"."ItemCode",
	"x_2"."Color",
	"x_2"."c1",
	"x_2"."c2",
	"x_2"."ItemCode_1",
	"x_2"."Style_1",
	"x_2"."c3",
	"x_2"."c4",
	"x_2"."c5"
FROM
	(
		SELECT
			"x_1"."cond",
			CASE
				WHEN "x_1"."cond_1" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond_1",
			"x_1"."cond_1" as "cond_1_1",
			"x_1"."ItemCode",
			"x_1"."Color",
			"x_1"."c1",
			"x_1"."c2",
			"x_1"."ItemCode_1",
			"x_1"."Style_1",
			"x_1"."c3",
			"x_1"."c4",
			"x_1"."c5"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1",
					"x"."ItemCode",
					"x"."Color",
					"x"."ItemCode_1",
					"x"."Style_1",
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
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
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
	NOT ("x_2"."cond" AND "x_2"."cond_1") OR NOT ("x_2"."cond" AND "x_2"."cond_1" AND "x_2"."cond_1_1")

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
	"x_2"."cond",
	"x_2"."cond_1_1",
	"x_2"."ItemCode",
	"x_2"."Color",
	"x_2"."c1",
	"x_2"."c2",
	"x_2"."ItemCode_1",
	"x_2"."Style_1",
	"x_2"."c3",
	"x_2"."c4",
	"x_2"."c5"
FROM
	(
		SELECT
			"x_1"."cond",
			CASE
				WHEN "x_1"."cond_1" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond_1",
			"x_1"."cond_1" as "cond_1_1",
			"x_1"."ItemCode",
			"x_1"."Color",
			"x_1"."c1",
			"x_1"."c2",
			"x_1"."ItemCode_1",
			"x_1"."Style_1",
			"x_1"."c3",
			"x_1"."c4",
			"x_1"."c5"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1",
					"x"."ItemCode",
					"x"."Color",
					"x"."ItemCode_1",
					"x"."Style_1",
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
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
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
	"x_2"."cond" AND
	"x_2"."cond_1" AND
	"x_2"."cond" AND
	"x_2"."cond_1" AND
	"x_2"."cond_1_1"

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
	"x_2"."cond",
	"x_2"."cond_1_1",
	"x_2"."ItemCode",
	"x_2"."Color",
	"x_2"."c1",
	"x_2"."c2",
	"x_2"."ItemCode_1",
	"x_2"."Style_1",
	"x_2"."c3",
	"x_2"."c4",
	"x_2"."c5"
FROM
	(
		SELECT
			"x_1"."cond",
			CASE
				WHEN "x_1"."cond_1" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond_1",
			"x_1"."ItemCode_1",
			"x_1"."Style_1",
			"x_1"."c3",
			"x_1"."c4",
			"x_1"."c5",
			"x_1"."cond_1" as "cond_1_1",
			"x_1"."ItemCode",
			"x_1"."Color",
			"x_1"."c1",
			"x_1"."c2"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1",
					"x"."ItemCode",
					"x"."Color",
					"x"."ItemCode_1",
					"x"."Style_1",
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
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
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
	NOT ("x_2"."cond" AND NOT "x_2"."cond_1") OR NOT ("x_2"."cond" AND NOT "x_2"."cond_1" AND "x_2"."c3")

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
	"x_2"."cond",
	"x_2"."cond_1_1",
	"x_2"."ItemCode",
	"x_2"."Color",
	"x_2"."c1",
	"x_2"."c2",
	"x_2"."ItemCode_1",
	"x_2"."Style_1",
	"x_2"."c3",
	"x_2"."c4",
	"x_2"."c5"
FROM
	(
		SELECT
			"x_1"."cond",
			CASE
				WHEN "x_1"."cond_1" IS NOT NULL THEN TRUE
				ELSE FALSE
			END as "cond_1",
			"x_1"."ItemCode_1",
			"x_1"."Style_1",
			"x_1"."c3",
			"x_1"."c4",
			"x_1"."c5",
			"x_1"."cond_1" as "cond_1_1",
			"x_1"."ItemCode",
			"x_1"."Color",
			"x_1"."c1",
			"x_1"."c2"
		FROM
			(
				SELECT
					"x"."cond",
					"x"."cond_1",
					"x"."ItemCode",
					"x"."Color",
					"x"."ItemCode_1",
					"x"."Style_1",
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
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
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
	"x_2"."cond" AND
	NOT "x_2"."cond_1" AND
	"x_2"."cond" AND
	NOT "x_2"."cond_1" AND
	"x_2"."c3"

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


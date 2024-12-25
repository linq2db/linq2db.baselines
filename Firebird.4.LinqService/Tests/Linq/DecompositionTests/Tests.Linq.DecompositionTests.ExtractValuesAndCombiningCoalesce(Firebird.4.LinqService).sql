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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

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
	NOT ("x_1"."cond" AND ("x_1"."cond_1" AND "x_1"."cond_2" OR NOT "x_1"."cond_1") OR NOT "x_1"."cond" AND NOT "x_1"."cond_3")

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
	"x_1"."cond" AND ("x_1"."cond_1" AND "x_1"."cond_2" OR NOT "x_1"."cond_1") OR
	NOT "x_1"."cond" AND NOT "x_1"."cond_3"

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
	NOT ("x_1"."cond" AND NOT "x_1"."cond_1" OR NOT "x_1"."cond" AND ("x_1"."cond_2" AND "x_1"."cond_3" OR NOT "x_1"."cond_2"))

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
	"x_1"."cond" AND NOT "x_1"."cond_1" OR NOT "x_1"."cond" AND ("x_1"."cond_2" AND "x_1"."cond_3" OR NOT "x_1"."cond_2")

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


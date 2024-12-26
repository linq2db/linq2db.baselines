BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Item"
		(
			"ItemId"   Int           NOT NULL,
			"Kind"     Int           NOT NULL,
			"ItemCode" NVarChar(255)     NULL,
			"Style"    NVarChar(255)     NULL,
			"Color"    NVarChar(255)     NULL,

			CONSTRAINT "PK_Item" PRIMARY KEY ("ItemId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 1
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 2
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 3
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 4
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 5
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 6
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 7
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 8
DECLARE @Kind Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @ItemId Integer(4) -- Int32
SET     @ItemId = 9
DECLARE @Kind Integer(4) -- Int32
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
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond_1",
			CAST("x"."Kind" = 1 AS smallint) as "cond_2",
			Substr("x"."ItemCode", 1, 2) as "ItemCode",
			"x"."Color",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "cond_3",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 3, 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."cond" AND ("x_1"."cond_1" AND "x_1"."cond_2" OR NOT "x_1"."cond_1") OR NOT "x_1"."cond" AND NOT "x_1"."cond_3")

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
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond_1",
			CAST("x"."Kind" = 1 AS smallint) as "cond_2",
			Substr("x"."ItemCode", 1, 2) as "ItemCode",
			"x"."Color",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "cond_3",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 3, 2) as "ItemCode_2",
			"x"."Style" as "Style_1",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."cond" AND ("x_1"."cond_1" AND "x_1"."cond_2" OR NOT "x_1"."cond_1") OR
	NOT "x_1"."cond" AND NOT "x_1"."cond_3"

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
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond_1",
			Substr("x"."ItemCode", 3, 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "cond_2",
			CAST("x"."Kind" = 1 AS smallint) as "cond_3",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 1, 2) as "ItemCode_2",
			"x"."Color",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	NOT ("x_1"."cond" AND NOT "x_1"."cond_1" OR NOT "x_1"."cond" AND ("x_1"."cond_2" AND "x_1"."cond_3" OR NOT "x_1"."cond_2"))

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
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 2 AS smallint) as "cond_1",
			Substr("x"."ItemCode", 3, 2) as "ItemCode",
			"x"."Style" as "Style_1",
			CAST("x"."Kind" = 1 OR "x"."Kind" = 3 AS smallint) as "cond_2",
			CAST("x"."Kind" = 1 AS smallint) as "cond_3",
			Substr("x"."ItemCode", 7, 2) as "ItemCode_1",
			"x"."Kind",
			Substr("x"."ItemCode", 1, 2) as "ItemCode_2",
			"x"."Color",
			Substr("x"."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" "x"
	) "x_1"
WHERE
	"x_1"."cond" AND NOT "x_1"."cond_1" OR NOT "x_1"."cond" AND ("x_1"."cond_2" AND "x_1"."cond_3" OR NOT "x_1"."cond_2")

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

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
END


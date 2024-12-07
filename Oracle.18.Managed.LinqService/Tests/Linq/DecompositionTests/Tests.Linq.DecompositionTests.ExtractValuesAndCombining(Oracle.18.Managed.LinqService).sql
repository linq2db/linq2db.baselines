BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Item"
		(
			"ItemId"   Int          NOT NULL,
			"Kind"     Int          NOT NULL,
			"ItemCode" VarChar(255)     NULL,
			"Style"    VarChar(255)     NULL,
			"Color"    VarChar(255)     NULL,

			CONSTRAINT "PK_Item" PRIMARY KEY ("ItemId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 1
DECLARE @Kind Int32
SET     @Kind = 1
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 2
DECLARE @Kind Int32
SET     @Kind = 1
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 3
DECLARE @Kind Int32
SET     @Kind = 1
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 4
DECLARE @Kind Int32
SET     @Kind = 2
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style3'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 5
DECLARE @Kind Int32
SET     @Kind = 2
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(4) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 6
DECLARE @Kind Int32
SET     @Kind = 2
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 7
DECLARE @Kind Int32
SET     @Kind = 3
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style3'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 8
DECLARE @Kind Int32
SET     @Kind = 3
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(4) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ItemId Int32
SET     @ItemId = 9
DECLARE @Kind Int32
SET     @Kind = 3
DECLARE @ItemCode Varchar2(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style Varchar2(6) -- String
SET     @Style = 'Style1'
DECLARE @Color Varchar2(5) -- String
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
	:ItemId,
	:Kind,
	:ItemCode,
	:Style,
	:Color
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."cond",
	x."Kind",
	x."ItemCode",
	x."Color",
	x."ItemCode_1",
	x."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN i."Kind" = 1 OR i."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN i."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_1",
			Substr(i."ItemCode", 1, 2) as "ItemCode",
			i."Color",
			i."Kind",
			Substr(i."ItemCode", 3, 2) as "ItemCode_1",
			i."Style" as "Style_1"
		FROM
			"Item" i
		WHERE
			i."Kind" = 1 OR i."Kind" = 2
	) x
WHERE
	NOT (x."cond" = 1 AND x."cond_1" = 1)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."cond",
	x."ItemCode",
	x."Color",
	x."Kind",
	x."ItemCode_1",
	x."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN i."Kind" = 1 OR i."Kind" = 3 THEN 1
				ELSE 0
			END as "cond",
			Substr(i."ItemCode", 5, 2) as "ItemCode",
			i."Color",
			i."Kind",
			Substr(i."ItemCode", 7, 2) as "ItemCode_1",
			i."Style" as "Style_1"
		FROM
			"Item" i
		WHERE
			i."Kind" = 1 OR i."Kind" = 3
	) x
WHERE
	x."cond" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."cond",
	t1."cond_1",
	t1."ItemCode",
	t1."Color",
	NULL,
	NULL,
	t1."ItemCode_1",
	t1."Style_1",
	NULL,
	NULL,
	NULL
FROM
	(
		SELECT
			CASE
				WHEN t."Kind" = 1 OR t."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			Substr(t."ItemCode", 1, 2) as "ItemCode",
			t."Color",
			Substr(t."ItemCode", 3, 2) as "ItemCode_1",
			t."Style" as "Style_1",
			CASE
				WHEN t."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_1"
		FROM
			"Item" t
	) t1
WHERE
	t1."cond" = 1
UNION ALL
SELECT
	t2."cond",
	NULL,
	NULL,
	NULL,
	t2."ItemCode",
	t2."Color",
	NULL,
	NULL,
	t2."cond_1",
	t2."ItemCode_1",
	t2."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN 1
				ELSE 0
			END as "cond",
			Substr(t_1."ItemCode", 5, 2) as "ItemCode",
			t_1."Color",
			Substr(t_1."ItemCode", 7, 2) as "ItemCode_1",
			t_1."Style" as "Style_1",
			CASE
				WHEN t_1."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_1"
		FROM
			"Item" t_1
	) t2
WHERE
	t2."cond" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x_2."cond",
	x_2."cond_1_1",
	x_2."ItemCode",
	x_2."Color",
	x_2."c1",
	x_2."c2",
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2."c3",
	x_2."c4",
	x_2."c5"
FROM
	(
		SELECT
			x_1."cond",
			CASE
				WHEN x_1."cond_1" IS NOT NULL THEN 1
				ELSE 0
			END as "cond_1",
			x_1."cond_1" as "cond_1_1",
			x_1."ItemCode",
			x_1."Color",
			x_1."c1",
			x_1."c2",
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1."c3",
			x_1."c4",
			x_1."c5"
		FROM
			(
				SELECT
					x."cond",
					x."cond_1",
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substr(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t
					) x
				WHERE
					x."cond" = 1
				UNION ALL
				SELECT
					t1."cond",
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
					t1."ItemCode" as "c1",
					t1."Color" as "c2",
					t1."cond_1" as "c3",
					t1."ItemCode_1" as "c4",
					t1."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substr(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t_1
					) t1
				WHERE
					t1."cond" = 1
			) x_1
	) x_2
WHERE
	NOT (x_2."cond" = 1 AND x_2."cond_1" = 1) OR NOT (x_2."cond" = 1 AND x_2."cond_1" = 1 AND x_2."cond_1_1" = 1 AND x_2."cond_1_1" IS NOT NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x_2."cond",
	x_2."cond_1_1",
	x_2."ItemCode",
	x_2."Color",
	x_2."c1",
	x_2."c2",
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2."c3",
	x_2."c4",
	x_2."c5"
FROM
	(
		SELECT
			x_1."cond",
			CASE
				WHEN x_1."cond_1" IS NOT NULL THEN 1
				ELSE 0
			END as "cond_1",
			x_1."cond_1" as "cond_1_1",
			x_1."ItemCode",
			x_1."Color",
			x_1."c1",
			x_1."c2",
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1."c3",
			x_1."c4",
			x_1."c5"
		FROM
			(
				SELECT
					x."cond",
					x."cond_1",
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substr(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t
					) x
				WHERE
					x."cond" = 1
				UNION ALL
				SELECT
					t1."cond",
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
					t1."ItemCode" as "c1",
					t1."Color" as "c2",
					t1."cond_1" as "c3",
					t1."ItemCode_1" as "c4",
					t1."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substr(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t_1
					) t1
				WHERE
					t1."cond" = 1
			) x_1
	) x_2
WHERE
	x_2."cond" = 1 AND
	x_2."cond_1" = 1 AND
	x_2."cond" = 1 AND
	x_2."cond_1" = 1 AND
	x_2."cond_1_1" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x_2."cond",
	x_2."cond_1_1",
	x_2."ItemCode",
	x_2."Color",
	x_2."c1",
	x_2."c2",
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2."c3",
	x_2."c4",
	x_2."c5"
FROM
	(
		SELECT
			x_1."cond",
			CASE
				WHEN x_1."cond_1" IS NOT NULL THEN 1
				ELSE 0
			END as "cond_1",
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1."c3",
			x_1."c4",
			x_1."c5",
			x_1."cond_1" as "cond_1_1",
			x_1."ItemCode",
			x_1."Color",
			x_1."c1",
			x_1."c2"
		FROM
			(
				SELECT
					x."cond",
					x."cond_1",
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substr(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t
					) x
				WHERE
					x."cond" = 1
				UNION ALL
				SELECT
					t1."cond",
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
					t1."ItemCode" as "c1",
					t1."Color" as "c2",
					t1."cond_1" as "c3",
					t1."ItemCode_1" as "c4",
					t1."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substr(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t_1
					) t1
				WHERE
					t1."cond" = 1
			) x_1
	) x_2
WHERE
	NOT (x_2."cond" = 1 AND x_2."cond_1" = 0) OR NOT (x_2."cond" = 1 AND x_2."cond_1" = 0 AND x_2."c3" = 1 AND x_2."c3" IS NOT NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x_2."cond",
	x_2."cond_1_1",
	x_2."ItemCode",
	x_2."Color",
	x_2."c1",
	x_2."c2",
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2."c3",
	x_2."c4",
	x_2."c5"
FROM
	(
		SELECT
			x_1."cond",
			CASE
				WHEN x_1."cond_1" IS NOT NULL THEN 1
				ELSE 0
			END as "cond_1",
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1."c3",
			x_1."c4",
			x_1."c5",
			x_1."cond_1" as "cond_1_1",
			x_1."ItemCode",
			x_1."Color",
			x_1."c1",
			x_1."c2"
		FROM
			(
				SELECT
					x."cond",
					x."cond_1",
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL as "c1",
					NULL as "c2",
					NULL as "c3",
					NULL as "c4",
					NULL as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substr(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t
					) x
				WHERE
					x."cond" = 1
				UNION ALL
				SELECT
					t1."cond",
					NULL as "cond_1",
					NULL as "ItemCode",
					NULL as "Color",
					NULL as "ItemCode_1",
					NULL as "Style_1",
					t1."ItemCode" as "c1",
					t1."Color" as "c2",
					t1."cond_1" as "c3",
					t1."ItemCode_1" as "c4",
					t1."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substr(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" t_1
					) t1
				WHERE
					t1."cond" = 1
			) x_1
	) x_2
WHERE
	x_2."cond" = 1 AND
	x_2."cond_1" = 0 AND
	x_2."cond" = 1 AND
	x_2."cond_1" = 0 AND
	x_2."c3" = 1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


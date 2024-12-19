BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (1,1,'01020102','Style1','White')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (2,1,'01020102','Style1','White')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (3,1,'01020102','Style1','White')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (4,2,'03020302','Style3','White')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (5,2,'01040104','Style1','Blue')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (6,2,'01010104','Style1','Black')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (7,3,'03020302','Style3','White')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (8,3,'01040104','Style1','Blue')
	INTO "Item" ("ItemId", "Kind", "ItemCode", "Style", "Color") VALUES (9,3,'01010104','Style1','Black')
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."Kind" = 1 OR t."Kind" = 2 THEN 1
		ELSE 0
	END,
	t."Kind",
	Substr(t."ItemCode", 1, 2),
	t."Color",
	Substr(t."ItemCode", 3, 2),
	t."Style",
	CASE
		WHEN t."Kind" = 1 OR t."Kind" = 3 THEN 1
		ELSE 0
	END,
	Substr(t."ItemCode", 5, 2),
	Substr(t."ItemCode", 7, 2)
FROM
	"Item" t

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."cond_1",
	x_1."Kind",
	x_1."ItemCode",
	x_1."Color",
	x_1."ItemCode_2",
	x_1."Style_1",
	x_1."cond_3",
	x_1."ItemCode_1",
	x_1."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond_1",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_2",
			Substr(x."ItemCode", 1, 2) as "ItemCode",
			x."Color",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "cond_3",
			Substr(x."ItemCode", 5, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 3, 2) as "ItemCode_2",
			x."Style" as "Style_1",
			Substr(x."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	NOT (x_1."cond" = 1 AND (x_1."cond_1" = 1 AND x_1."cond_2" = 1 OR x_1."cond_1" = 0) OR x_1."cond" = 0 AND x_1."cond_3" = 0)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."cond_1",
	x_1."Kind",
	x_1."ItemCode",
	x_1."Color",
	x_1."ItemCode_2",
	x_1."Style_1",
	x_1."cond_3",
	x_1."ItemCode_1",
	x_1."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond_1",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_2",
			Substr(x."ItemCode", 1, 2) as "ItemCode",
			x."Color",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "cond_3",
			Substr(x."ItemCode", 5, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 3, 2) as "ItemCode_2",
			x."Style" as "Style_1",
			Substr(x."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	x_1."cond" = 1 AND (x_1."cond_1" = 1 AND x_1."cond_2" = 1 OR x_1."cond_1" = 0) OR
	x_1."cond" = 0 AND x_1."cond_3" = 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."cond_1",
	x_1."Kind",
	x_1."ItemCode_2",
	x_1."Color",
	x_1."ItemCode",
	x_1."Style_1",
	x_1."cond_2",
	x_1."ItemCode_3",
	x_1."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond_1",
			Substr(x."ItemCode", 3, 2) as "ItemCode",
			x."Style" as "Style_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "cond_2",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_3",
			Substr(x."ItemCode", 7, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 1, 2) as "ItemCode_2",
			x."Color",
			Substr(x."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	NOT (x_1."cond" = 1 AND x_1."cond_1" = 0 OR x_1."cond" = 0 AND (x_1."cond_2" = 1 AND x_1."cond_3" = 1 OR x_1."cond_2" = 0))

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."cond_1",
	x_1."Kind",
	x_1."ItemCode_2",
	x_1."Color",
	x_1."ItemCode",
	x_1."Style_1",
	x_1."cond_2",
	x_1."ItemCode_3",
	x_1."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "cond_1",
			Substr(x."ItemCode", 3, 2) as "ItemCode",
			x."Style" as "Style_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "cond_2",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_3",
			Substr(x."ItemCode", 7, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 1, 2) as "ItemCode_2",
			x."Color",
			Substr(x."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	x_1."cond" = 1 AND x_1."cond_1" = 0 OR x_1."cond" = 0 AND (x_1."cond_2" = 1 AND x_1."cond_3" = 1 OR x_1."cond_2" = 0)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


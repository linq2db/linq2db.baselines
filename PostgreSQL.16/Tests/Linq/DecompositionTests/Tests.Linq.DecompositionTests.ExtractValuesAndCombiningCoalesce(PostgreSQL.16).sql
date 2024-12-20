﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Item"
(
	"ItemId"   Int  NOT NULL,
	"Kind"     Int  NOT NULL,
	"ItemCode" text     NULL,
	"Style"    text     NULL,
	"Color"    text     NULL,

	CONSTRAINT "PK_Item" PRIMARY KEY ("ItemId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Item"
(
	"ItemId",
	"Kind",
	"ItemCode",
	"Style",
	"Color"
)
VALUES
(1,1,'01020102','Style1','White'),
(2,1,'01020102','Style1','White'),
(3,1,'01020102','Style1','White'),
(4,2,'03020302','Style3','White'),
(5,2,'01040104','Style1','Blue'),
(6,2,'01010104','Style1','Black'),
(7,3,'03020302','Style3','White'),
(8,3,'01040104','Style1','Blue'),
(9,3,'01010104','Style1','Black')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN t."Kind" = 1 OR t."Kind" = 2 THEN True
		ELSE False
	END,
	t."Kind",
	Substring(t."ItemCode", 1, 2),
	t."Color",
	Substring(t."ItemCode", 3, 2),
	t."Style",
	CASE
		WHEN t."Kind" = 1 OR t."Kind" = 3 THEN True
		ELSE False
	END,
	Substring(t."ItemCode", 5, 2),
	Substring(t."ItemCode", 7, 2)
FROM
	"Item" t

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x_1.cond_1,
	x_1."Kind",
	x_1."ItemCode",
	x_1."Color",
	x_1."ItemCode_2",
	x_1."Style_1",
	x_1.cond_3,
	x_1."ItemCode_1",
	x_1."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond,
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond_1,
			CASE
				WHEN x."Kind" = 1 THEN True
				ELSE False
			END as cond_2,
			Substring(x."ItemCode", 1, 2) as "ItemCode",
			x."Color",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN True
				ELSE False
			END as cond_3,
			Substring(x."ItemCode", 5, 2) as "ItemCode_1",
			x."Kind",
			Substring(x."ItemCode", 3, 2) as "ItemCode_2",
			x."Style" as "Style_1",
			Substring(x."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	NOT (x_1.cond AND (x_1.cond_1 AND x_1.cond_2 OR NOT x_1.cond_1) OR NOT x_1.cond AND NOT x_1.cond_3)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x_1.cond_1,
	x_1."Kind",
	x_1."ItemCode",
	x_1."Color",
	x_1."ItemCode_2",
	x_1."Style_1",
	x_1.cond_3,
	x_1."ItemCode_1",
	x_1."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond,
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond_1,
			CASE
				WHEN x."Kind" = 1 THEN True
				ELSE False
			END as cond_2,
			Substring(x."ItemCode", 1, 2) as "ItemCode",
			x."Color",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN True
				ELSE False
			END as cond_3,
			Substring(x."ItemCode", 5, 2) as "ItemCode_1",
			x."Kind",
			Substring(x."ItemCode", 3, 2) as "ItemCode_2",
			x."Style" as "Style_1",
			Substring(x."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	x_1.cond AND (x_1.cond_1 AND x_1.cond_2 OR NOT x_1.cond_1) OR
	NOT x_1.cond AND NOT x_1.cond_3

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x_1.cond_1,
	x_1."Kind",
	x_1."ItemCode_2",
	x_1."Color",
	x_1."ItemCode",
	x_1."Style_1",
	x_1.cond_2,
	x_1."ItemCode_3",
	x_1."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond,
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond_1,
			Substring(x."ItemCode", 3, 2) as "ItemCode",
			x."Style" as "Style_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN True
				ELSE False
			END as cond_2,
			CASE
				WHEN x."Kind" = 1 THEN True
				ELSE False
			END as cond_3,
			Substring(x."ItemCode", 7, 2) as "ItemCode_1",
			x."Kind",
			Substring(x."ItemCode", 1, 2) as "ItemCode_2",
			x."Color",
			Substring(x."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	NOT (x_1.cond AND NOT x_1.cond_1 OR NOT x_1.cond AND (x_1.cond_2 AND x_1.cond_3 OR NOT x_1.cond_2))

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x_1.cond_1,
	x_1."Kind",
	x_1."ItemCode_2",
	x_1."Color",
	x_1."ItemCode",
	x_1."Style_1",
	x_1.cond_2,
	x_1."ItemCode_3",
	x_1."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond,
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN True
				ELSE False
			END as cond_1,
			Substring(x."ItemCode", 3, 2) as "ItemCode",
			x."Style" as "Style_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN True
				ELSE False
			END as cond_2,
			CASE
				WHEN x."Kind" = 1 THEN True
				ELSE False
			END as cond_3,
			Substring(x."ItemCode", 7, 2) as "ItemCode_1",
			x."Kind",
			Substring(x."ItemCode", 1, 2) as "ItemCode_2",
			x."Color",
			Substring(x."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	x_1.cond AND NOT x_1.cond_1 OR NOT x_1.cond AND (x_1.cond_2 AND x_1.cond_3 OR NOT x_1.cond_2)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Item"


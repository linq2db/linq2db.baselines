BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x.cond,
	x."Kind",
	x."ItemCode",
	x."Color",
	x."ItemCode_1",
	x."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN i."Kind" = 1 OR i."Kind" = 2 THEN True
				ELSE False
			END as cond,
			CASE
				WHEN i."Kind" = 1 THEN True
				ELSE False
			END as cond_1,
			Substring(i."ItemCode", 1, 2) as "ItemCode",
			i."Color",
			i."Kind",
			Substring(i."ItemCode", 3, 2) as "ItemCode_1",
			i."Style" as "Style_1"
		FROM
			"Item" i
		WHERE
			i."Kind" = 1 OR i."Kind" = 2
	) x
WHERE
	NOT (x.cond AND x.cond_1)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x.cond,
	x."ItemCode",
	x."Color",
	x."Kind",
	x."ItemCode_1",
	x."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN i."Kind" = 1 OR i."Kind" = 3 THEN True
				ELSE False
			END as cond,
			Substring(i."ItemCode", 5, 2) as "ItemCode",
			i."Color",
			i."Kind",
			Substring(i."ItemCode", 7, 2) as "ItemCode_1",
			i."Style" as "Style_1"
		FROM
			"Item" i
		WHERE
			i."Kind" = 1 OR i."Kind" = 3
	) x
WHERE
	x.cond

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.cond,
	t1.cond_1,
	t1."ItemCode",
	t1."Color",
	NULL::text,
	NULL::text,
	t1."ItemCode_1",
	t1."Style_1",
	NULL::Boolean,
	NULL::text,
	NULL::text
FROM
	(
		SELECT
			CASE
				WHEN t."Kind" = 1 OR t."Kind" = 2 THEN True
				ELSE False
			END as cond,
			Substring(t."ItemCode", 1, 2) as "ItemCode",
			t."Color",
			Substring(t."ItemCode", 3, 2) as "ItemCode_1",
			t."Style" as "Style_1",
			CASE
				WHEN t."Kind" = 1 THEN True
				ELSE False
			END as cond_1
		FROM
			"Item" t
	) t1
WHERE
	t1.cond
UNION ALL
SELECT
	t2.cond,
	NULL::Boolean,
	NULL::text,
	NULL::text,
	t2."ItemCode",
	t2."Color",
	NULL::text,
	NULL::text,
	t2.cond_1,
	t2."ItemCode_1",
	t2."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN True
				ELSE False
			END as cond,
			Substring(t_1."ItemCode", 5, 2) as "ItemCode",
			t_1."Color",
			Substring(t_1."ItemCode", 7, 2) as "ItemCode_1",
			t_1."Style" as "Style_1",
			CASE
				WHEN t_1."Kind" = 1 THEN True
				ELSE False
			END as cond_1
		FROM
			"Item" t_1
	) t2
WHERE
	t2.cond

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x_2.cond,
	x_2.cond_1_1,
	x_2."ItemCode",
	x_2."Color",
	x_2.c1,
	x_2.c2,
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2.c3,
	x_2.c4,
	x_2.c5
FROM
	(
		SELECT
			x_1.cond,
			CASE
				WHEN x_1.cond_1 IS NOT NULL THEN True
				ELSE False
			END as cond_1,
			x_1.cond_1 as cond_1_1,
			x_1."ItemCode",
			x_1."Color",
			x_1.c1,
			x_1.c2,
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1.c3,
			x_1.c4,
			x_1.c5
		FROM
			(
				SELECT
					x.cond,
					x.cond_1,
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL::text as c1,
					NULL::text as c2,
					NULL::Boolean as c3,
					NULL::text as c4,
					NULL::text as c5
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN True
								ELSE False
							END as cond,
							Substring(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substring(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t
					) x
				WHERE
					x.cond
				UNION ALL
				SELECT
					t1.cond,
					NULL::Boolean as cond_1,
					NULL::text as "ItemCode",
					NULL::text as "Color",
					NULL::text as "ItemCode_1",
					NULL::text as "Style_1",
					t1."ItemCode" as c1,
					t1."Color" as c2,
					t1.cond_1 as c3,
					t1."ItemCode_1" as c4,
					t1."Style_1" as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN True
								ELSE False
							END as cond,
							Substring(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substring(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t_1
					) t1
				WHERE
					t1.cond
			) x_1
	) x_2
WHERE
	NOT (x_2.cond AND x_2.cond_1) OR NOT (x_2.cond AND x_2.cond_1 AND x_2.cond_1_1)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x_2.cond,
	x_2.cond_1_1,
	x_2."ItemCode",
	x_2."Color",
	x_2.c1,
	x_2.c2,
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2.c3,
	x_2.c4,
	x_2.c5
FROM
	(
		SELECT
			x_1.cond,
			CASE
				WHEN x_1.cond_1 IS NOT NULL THEN True
				ELSE False
			END as cond_1,
			x_1.cond_1 as cond_1_1,
			x_1."ItemCode",
			x_1."Color",
			x_1.c1,
			x_1.c2,
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1.c3,
			x_1.c4,
			x_1.c5
		FROM
			(
				SELECT
					x.cond,
					x.cond_1,
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL::text as c1,
					NULL::text as c2,
					NULL::Boolean as c3,
					NULL::text as c4,
					NULL::text as c5
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN True
								ELSE False
							END as cond,
							Substring(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substring(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t
					) x
				WHERE
					x.cond
				UNION ALL
				SELECT
					t1.cond,
					NULL::Boolean as cond_1,
					NULL::text as "ItemCode",
					NULL::text as "Color",
					NULL::text as "ItemCode_1",
					NULL::text as "Style_1",
					t1."ItemCode" as c1,
					t1."Color" as c2,
					t1.cond_1 as c3,
					t1."ItemCode_1" as c4,
					t1."Style_1" as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN True
								ELSE False
							END as cond,
							Substring(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substring(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t_1
					) t1
				WHERE
					t1.cond
			) x_1
	) x_2
WHERE
	x_2.cond AND
	x_2.cond_1 AND
	x_2.cond AND
	x_2.cond_1 AND
	x_2.cond_1_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x_2.cond,
	x_2.cond_1_1,
	x_2."ItemCode",
	x_2."Color",
	x_2.c1,
	x_2.c2,
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2.c3,
	x_2.c4,
	x_2.c5
FROM
	(
		SELECT
			x_1.cond,
			CASE
				WHEN x_1.cond_1 IS NOT NULL THEN True
				ELSE False
			END as cond_1,
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1.c3,
			x_1.c4,
			x_1.c5,
			x_1.cond_1 as cond_1_1,
			x_1."ItemCode",
			x_1."Color",
			x_1.c1,
			x_1.c2
		FROM
			(
				SELECT
					x.cond,
					x.cond_1,
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL::text as c1,
					NULL::text as c2,
					NULL::Boolean as c3,
					NULL::text as c4,
					NULL::text as c5
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN True
								ELSE False
							END as cond,
							Substring(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substring(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t
					) x
				WHERE
					x.cond
				UNION ALL
				SELECT
					t1.cond,
					NULL::Boolean as cond_1,
					NULL::text as "ItemCode",
					NULL::text as "Color",
					NULL::text as "ItemCode_1",
					NULL::text as "Style_1",
					t1."ItemCode" as c1,
					t1."Color" as c2,
					t1.cond_1 as c3,
					t1."ItemCode_1" as c4,
					t1."Style_1" as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN True
								ELSE False
							END as cond,
							Substring(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substring(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t_1
					) t1
				WHERE
					t1.cond
			) x_1
	) x_2
WHERE
	NOT (x_2.cond AND NOT x_2.cond_1) OR NOT (x_2.cond AND NOT x_2.cond_1 AND x_2.c3)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x_2.cond,
	x_2.cond_1_1,
	x_2."ItemCode",
	x_2."Color",
	x_2.c1,
	x_2.c2,
	x_2."ItemCode_1",
	x_2."Style_1",
	x_2.c3,
	x_2.c4,
	x_2.c5
FROM
	(
		SELECT
			x_1.cond,
			CASE
				WHEN x_1.cond_1 IS NOT NULL THEN True
				ELSE False
			END as cond_1,
			x_1."ItemCode_1",
			x_1."Style_1",
			x_1.c3,
			x_1.c4,
			x_1.c5,
			x_1.cond_1 as cond_1_1,
			x_1."ItemCode",
			x_1."Color",
			x_1.c1,
			x_1.c2
		FROM
			(
				SELECT
					x.cond,
					x.cond_1,
					x."ItemCode",
					x."Color",
					x."ItemCode_1",
					x."Style_1",
					NULL::text as c1,
					NULL::text as c2,
					NULL::Boolean as c3,
					NULL::text as c4,
					NULL::text as c5
				FROM
					(
						SELECT
							CASE
								WHEN t."Kind" = 1 OR t."Kind" = 2 THEN True
								ELSE False
							END as cond,
							Substring(t."ItemCode", 1, 2) as "ItemCode",
							t."Color",
							Substring(t."ItemCode", 3, 2) as "ItemCode_1",
							t."Style" as "Style_1",
							CASE
								WHEN t."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t
					) x
				WHERE
					x.cond
				UNION ALL
				SELECT
					t1.cond,
					NULL::Boolean as cond_1,
					NULL::text as "ItemCode",
					NULL::text as "Color",
					NULL::text as "ItemCode_1",
					NULL::text as "Style_1",
					t1."ItemCode" as c1,
					t1."Color" as c2,
					t1.cond_1 as c3,
					t1."ItemCode_1" as c4,
					t1."Style_1" as c5
				FROM
					(
						SELECT
							CASE
								WHEN t_1."Kind" = 1 OR t_1."Kind" = 3 THEN True
								ELSE False
							END as cond,
							Substring(t_1."ItemCode", 5, 2) as "ItemCode",
							t_1."Color",
							Substring(t_1."ItemCode", 7, 2) as "ItemCode_1",
							t_1."Style" as "Style_1",
							CASE
								WHEN t_1."Kind" = 1 THEN True
								ELSE False
							END as cond_1
						FROM
							"Item" t_1
					) t1
				WHERE
					t1.cond
			) x_1
	) x_2
WHERE
	x_2.cond AND
	NOT x_2.cond_1 AND
	x_2.cond AND
	NOT x_2.cond_1 AND
	x_2.c3

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Item"


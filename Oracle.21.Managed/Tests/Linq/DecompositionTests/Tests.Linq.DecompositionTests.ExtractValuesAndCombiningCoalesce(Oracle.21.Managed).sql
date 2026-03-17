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

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."Color_1",
	x_1."Kind",
	x_1."ItemCode",
	x_1."Color_3",
	x_1."ItemCode_2",
	x_1."Style_1",
	x_1."Color_4",
	x_1."ItemCode_1",
	x_1."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Color",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Color_1",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "Color_2",
			Substr(x."ItemCode", 1, 2) as "ItemCode",
			x."Color" as "Color_3",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "Color_4",
			Substr(x."ItemCode", 5, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 3, 2) as "ItemCode_2",
			x."Style" as "Style_1",
			Substr(x."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	NOT (x_1."Color" = 1 AND (x_1."Color_1" = 1 AND x_1."Color_2" = 1 OR x_1."Color_1" = 0) OR x_1."Color" = 0 AND x_1."Color_4" = 0)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."Color_1",
	x_1."Kind",
	x_1."ItemCode",
	x_1."Color_3",
	x_1."ItemCode_2",
	x_1."Style_1",
	x_1."Color_4",
	x_1."ItemCode_1",
	x_1."ItemCode_3"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Color",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Color_1",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "Color_2",
			Substr(x."ItemCode", 1, 2) as "ItemCode",
			x."Color" as "Color_3",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "Color_4",
			Substr(x."ItemCode", 5, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 3, 2) as "ItemCode_2",
			x."Style" as "Style_1",
			Substr(x."ItemCode", 7, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	x_1."Color" = 1 AND (x_1."Color_1" = 1 AND x_1."Color_2" = 1 OR x_1."Color_1" = 0) OR
	x_1."Color" = 0 AND x_1."Color_4" = 0

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."Size_2",
	x_1."Kind",
	x_1."ItemCode_2",
	x_1."Color",
	x_1."ItemCode",
	x_1."Style_1",
	x_1."Size_3",
	x_1."ItemCode_3",
	x_1."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Size_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Size_2",
			Substr(x."ItemCode", 3, 2) as "ItemCode",
			x."Style" as "Style_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "Size_3",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "Size_4",
			Substr(x."ItemCode", 7, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 1, 2) as "ItemCode_2",
			x."Color",
			Substr(x."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	NOT (x_1."Size_1" = 1 AND x_1."Size_2" = 0 OR x_1."Size_1" = 0 AND (x_1."Size_3" = 1 AND x_1."Size_4" = 1 OR x_1."Size_3" = 0))

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x_1."Size_2",
	x_1."Kind",
	x_1."ItemCode_2",
	x_1."Color",
	x_1."ItemCode",
	x_1."Style_1",
	x_1."Size_3",
	x_1."ItemCode_3",
	x_1."ItemCode_1"
FROM
	(
		SELECT
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Size_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 2 THEN 1
				ELSE 0
			END as "Size_2",
			Substr(x."ItemCode", 3, 2) as "ItemCode",
			x."Style" as "Style_1",
			CASE
				WHEN x."Kind" = 1 OR x."Kind" = 3 THEN 1
				ELSE 0
			END as "Size_3",
			CASE
				WHEN x."Kind" = 1 THEN 1
				ELSE 0
			END as "Size_4",
			Substr(x."ItemCode", 7, 2) as "ItemCode_1",
			x."Kind",
			Substr(x."ItemCode", 1, 2) as "ItemCode_2",
			x."Color",
			Substr(x."ItemCode", 5, 2) as "ItemCode_3"
		FROM
			"Item" x
	) x_1
WHERE
	x_1."Size_1" = 1 AND x_1."Size_2" = 0 OR x_1."Size_1" = 0 AND (x_1."Size_3" = 1 AND x_1."Size_4" = 1 OR x_1."Size_3" = 0)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."Kind",
	t1."ItemCode",
	t1."Style",
	t1."Color"
FROM
	"Item" t1


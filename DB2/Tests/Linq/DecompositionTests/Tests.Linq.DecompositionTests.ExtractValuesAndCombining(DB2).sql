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
-- DB2 DB2.LUW DB2LUW

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
				WHEN "i"."Kind" = 1 OR "i"."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			CASE
				WHEN "i"."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_1",
			Substr("i"."ItemCode", 1, 2) as "ItemCode",
			"i"."Color",
			"i"."Kind",
			Substr("i"."ItemCode", 3, 2) as "ItemCode_1",
			"i"."Style" as "Style_1"
		FROM
			"Item" "i"
		WHERE
			"i"."Kind" = 1 OR "i"."Kind" = 2
	) "x"
WHERE
	NOT ("x"."cond" = 1 AND "x"."cond_1" = 1)

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
				WHEN "i"."Kind" = 1 OR "i"."Kind" = 3 THEN 1
				ELSE 0
			END as "cond",
			Substr("i"."ItemCode", 5, 2) as "ItemCode",
			"i"."Color",
			"i"."Kind",
			Substr("i"."ItemCode", 7, 2) as "ItemCode_1",
			"i"."Style" as "Style_1"
		FROM
			"Item" "i"
		WHERE
			"i"."Kind" = 1 OR "i"."Kind" = 3
	) "x"
WHERE
	"x"."cond" = 1

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
	"t1"."cond",
	"t1"."cond_1",
	"t1"."ItemCode",
	"t1"."Color",
	CAST(NULL AS NVarChar(8168)),
	CAST(NULL AS NVarChar(255)),
	"t1"."ItemCode_1",
	"t1"."Style_1",
	CAST(NULL AS smallint),
	CAST(NULL AS NVarChar(8168)),
	CAST(NULL AS NVarChar(255))
FROM
	(
		SELECT
			CASE
				WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN 1
				ELSE 0
			END as "cond",
			Substr("t"."ItemCode", 1, 2) as "ItemCode",
			"t"."Color",
			Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
			"t"."Style" as "Style_1",
			CASE
				WHEN "t"."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_1"
		FROM
			"Item" "t"
	) "t1"
WHERE
	"t1"."cond" = 1
UNION ALL
SELECT
	"t2"."cond",
	CAST(NULL AS smallint),
	CAST(NULL AS NVarChar(8168)),
	CAST(NULL AS NVarChar(255)),
	"t2"."ItemCode",
	"t2"."Color",
	CAST(NULL AS NVarChar(8168)),
	CAST(NULL AS NVarChar(255)),
	"t2"."cond_1",
	"t2"."ItemCode_1",
	"t2"."Style_1"
FROM
	(
		SELECT
			CASE
				WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN 1
				ELSE 0
			END as "cond",
			Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
			"t_1"."Color",
			Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
			"t_1"."Style" as "Style_1",
			CASE
				WHEN "t_1"."Kind" = 1 THEN 1
				ELSE 0
			END as "cond_1"
		FROM
			"Item" "t_1"
	) "t2"
WHERE
	"t2"."cond" = 1

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
				WHEN "x_1"."cond_1" IS NOT NULL THEN 1
				ELSE 0
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
					CAST(NULL AS NVarChar(8168)) as "c1",
					CAST(NULL AS NVarChar(255)) as "c2",
					CAST(NULL AS smallint) as "c3",
					CAST(NULL AS NVarChar(8168)) as "c4",
					CAST(NULL AS NVarChar(255)) as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr("t"."ItemCode", 1, 2) as "ItemCode",
							"t"."Color",
							Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
							"t"."Style" as "Style_1",
							CASE
								WHEN "t"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t"
					) "x"
				WHERE
					"x"."cond" = 1
				UNION ALL
				SELECT
					"t1"."cond",
					CAST(NULL AS smallint) as "cond_1",
					CAST(NULL AS NVarChar(8168)) as "ItemCode",
					CAST(NULL AS NVarChar(255)) as "Color",
					CAST(NULL AS NVarChar(8168)) as "ItemCode_1",
					CAST(NULL AS NVarChar(255)) as "Style_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
							"t_1"."Color",
							Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
							"t_1"."Style" as "Style_1",
							CASE
								WHEN "t_1"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t_1"
					) "t1"
				WHERE
					"t1"."cond" = 1
			) "x_1"
	) "x_2"
WHERE
	NOT ("x_2"."cond" = 1 AND "x_2"."cond_1" = 1) OR NOT ("x_2"."cond" = 1 AND "x_2"."cond_1" = 1 AND "x_2"."cond_1_1" = 1 AND "x_2"."cond_1_1" IS NOT NULL)

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
				WHEN "x_1"."cond_1" IS NOT NULL THEN 1
				ELSE 0
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
					CAST(NULL AS NVarChar(8168)) as "c1",
					CAST(NULL AS NVarChar(255)) as "c2",
					CAST(NULL AS smallint) as "c3",
					CAST(NULL AS NVarChar(8168)) as "c4",
					CAST(NULL AS NVarChar(255)) as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr("t"."ItemCode", 1, 2) as "ItemCode",
							"t"."Color",
							Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
							"t"."Style" as "Style_1",
							CASE
								WHEN "t"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t"
					) "x"
				WHERE
					"x"."cond" = 1
				UNION ALL
				SELECT
					"t1"."cond",
					CAST(NULL AS smallint) as "cond_1",
					CAST(NULL AS NVarChar(8168)) as "ItemCode",
					CAST(NULL AS NVarChar(255)) as "Color",
					CAST(NULL AS NVarChar(8168)) as "ItemCode_1",
					CAST(NULL AS NVarChar(255)) as "Style_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
							"t_1"."Color",
							Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
							"t_1"."Style" as "Style_1",
							CASE
								WHEN "t_1"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t_1"
					) "t1"
				WHERE
					"t1"."cond" = 1
			) "x_1"
	) "x_2"
WHERE
	"x_2"."cond" = 1 AND
	"x_2"."cond_1" = 1 AND
	"x_2"."cond" = 1 AND
	"x_2"."cond_1" = 1 AND
	"x_2"."cond_1_1" = 1

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
				WHEN "x_1"."cond_1" IS NOT NULL THEN 1
				ELSE 0
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
					CAST(NULL AS NVarChar(8168)) as "c1",
					CAST(NULL AS NVarChar(255)) as "c2",
					CAST(NULL AS smallint) as "c3",
					CAST(NULL AS NVarChar(8168)) as "c4",
					CAST(NULL AS NVarChar(255)) as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr("t"."ItemCode", 1, 2) as "ItemCode",
							"t"."Color",
							Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
							"t"."Style" as "Style_1",
							CASE
								WHEN "t"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t"
					) "x"
				WHERE
					"x"."cond" = 1
				UNION ALL
				SELECT
					"t1"."cond",
					CAST(NULL AS smallint) as "cond_1",
					CAST(NULL AS NVarChar(8168)) as "ItemCode",
					CAST(NULL AS NVarChar(255)) as "Color",
					CAST(NULL AS NVarChar(8168)) as "ItemCode_1",
					CAST(NULL AS NVarChar(255)) as "Style_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
							"t_1"."Color",
							Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
							"t_1"."Style" as "Style_1",
							CASE
								WHEN "t_1"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t_1"
					) "t1"
				WHERE
					"t1"."cond" = 1
			) "x_1"
	) "x_2"
WHERE
	NOT ("x_2"."cond" = 1 AND "x_2"."cond_1" = 0) OR NOT ("x_2"."cond" = 1 AND "x_2"."cond_1" = 0 AND "x_2"."c3" = 1 AND "x_2"."c3" IS NOT NULL)

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
				WHEN "x_1"."cond_1" IS NOT NULL THEN 1
				ELSE 0
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
					CAST(NULL AS NVarChar(8168)) as "c1",
					CAST(NULL AS NVarChar(255)) as "c2",
					CAST(NULL AS smallint) as "c3",
					CAST(NULL AS NVarChar(8168)) as "c4",
					CAST(NULL AS NVarChar(255)) as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t"."Kind" = 1 OR "t"."Kind" = 2 THEN 1
								ELSE 0
							END as "cond",
							Substr("t"."ItemCode", 1, 2) as "ItemCode",
							"t"."Color",
							Substr("t"."ItemCode", 3, 2) as "ItemCode_1",
							"t"."Style" as "Style_1",
							CASE
								WHEN "t"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t"
					) "x"
				WHERE
					"x"."cond" = 1
				UNION ALL
				SELECT
					"t1"."cond",
					CAST(NULL AS smallint) as "cond_1",
					CAST(NULL AS NVarChar(8168)) as "ItemCode",
					CAST(NULL AS NVarChar(255)) as "Color",
					CAST(NULL AS NVarChar(8168)) as "ItemCode_1",
					CAST(NULL AS NVarChar(255)) as "Style_1",
					"t1"."ItemCode" as "c1",
					"t1"."Color" as "c2",
					"t1"."cond_1" as "c3",
					"t1"."ItemCode_1" as "c4",
					"t1"."Style_1" as "c5"
				FROM
					(
						SELECT
							CASE
								WHEN "t_1"."Kind" = 1 OR "t_1"."Kind" = 3 THEN 1
								ELSE 0
							END as "cond",
							Substr("t_1"."ItemCode", 5, 2) as "ItemCode",
							"t_1"."Color",
							Substr("t_1"."ItemCode", 7, 2) as "ItemCode_1",
							"t_1"."Style" as "Style_1",
							CASE
								WHEN "t_1"."Kind" = 1 THEN 1
								ELSE 0
							END as "cond_1"
						FROM
							"Item" "t_1"
					) "t1"
				WHERE
					"t1"."cond" = 1
			) "x_1"
	) "x_2"
WHERE
	"x_2"."cond" = 1 AND
	"x_2"."cond_1" = 0 AND
	"x_2"."cond" = 1 AND
	"x_2"."cond_1" = 0 AND
	"x_2"."c3" = 1

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


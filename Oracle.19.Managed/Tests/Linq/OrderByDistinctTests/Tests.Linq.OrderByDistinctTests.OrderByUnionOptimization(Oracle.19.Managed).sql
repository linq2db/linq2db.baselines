BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "OrderByDistinctData"
		(
			"Id"            Int          NOT NULL,
			"DuplicateData" VarChar(255)     NULL,
			"OrderData1"    Int          NOT NULL,
			"OrderData2"    Int          NOT NULL,

			CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (1,'One',1,1)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (2,'One',1,10)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (3,'One',2,2)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (4,'One',3,3)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (5,'One',4,4)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (6,'One',5,5)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (10,'Two',1,1)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (20,'Two',1,10)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (30,'Two',2,2)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (40,'Two',3,3)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (50,'Two',4,4)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (60,'Two',5,5)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (100,'Three',1,1)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (200,'Three',1,10)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (300,'Three',2,2)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (400,'Three',3,3)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (500,'Three',4,4)
	INTO "OrderByDistinctData" ("Id", "DuplicateData", "OrderData1", "OrderData2") VALUES (600,'Three',5,5)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	t1."Id"
FROM
	(
		SELECT
			x_2."Id",
			x_2."DuplicateData",
			x_2."OrderData1",
			x_2."OrderData2"
		FROM
			(
				SELECT
					x."Id",
					x."DuplicateData",
					x."OrderData1",
					x."OrderData2"
				FROM
					"OrderByDistinctData" x
				WHERE
					x."Id" BETWEEN 1 AND 9
				UNION ALL
				SELECT
					x_1."Id",
					x_1."DuplicateData",
					x_1."OrderData1",
					x_1."OrderData2"
				FROM
					"OrderByDistinctData" x_1
				WHERE
					x_1."Id" BETWEEN 10 AND 90
			) x_2
		UNION
		SELECT
			x_3."Id",
			x_3."DuplicateData",
			x_3."OrderData1",
			x_3."OrderData2"
		FROM
			"OrderByDistinctData" x_3
		WHERE
			x_3."Id" BETWEEN 100 AND 900
	) t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


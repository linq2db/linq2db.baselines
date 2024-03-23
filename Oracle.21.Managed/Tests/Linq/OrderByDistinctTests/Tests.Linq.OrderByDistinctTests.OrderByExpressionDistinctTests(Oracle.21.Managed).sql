BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	x."DuplicateData"
FROM
	"OrderByDistinctData" x
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	g_1."DuplicateData"
FROM
	"OrderByDistinctData" g_1
GROUP BY
	g_1."DuplicateData"
ORDER BY
	MAX(MOD(g_1."OrderData1", 3))
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderByDistinctData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


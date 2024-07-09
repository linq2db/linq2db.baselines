﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "sample_class"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "sample_class"
		(
			"id"    Int         NOT NULL,
			"value" VarChar(50)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "sample_class" ("id", "value") VALUES (1,'Str_1')
	INTO "sample_class" ("id", "value") VALUES (2,'Str_2')
	INTO "sample_class" ("id", "value") VALUES (3,'Str_3')
	INTO "sample_class" ("id", "value") VALUES (4,'Str_4')
	INTO "sample_class" ("id", "value") VALUES (5,'Str_5')
	INTO "sample_class" ("id", "value") VALUES (6,'Str_6')
	INTO "sample_class" ("id", "value") VALUES (7,'Str_7')
	INTO "sample_class" ("id", "value") VALUES (8,'Str_8')
	INTO "sample_class" ("id", "value") VALUES (9,'Str_9')
	INTO "sample_class" ("id", "value") VALUES (10,'Str_10')
	INTO "sample_class" ("id", "value") VALUES (11,'Str_11')
	INTO "sample_class" ("id", "value") VALUES (12,'Str_12')
	INTO "sample_class" ("id", "value") VALUES (13,'Str_13')
	INTO "sample_class" ("id", "value") VALUES (14,'Str_14')
	INTO "sample_class" ("id", "value") VALUES (15,'Str_15')
	INTO "sample_class" ("id", "value") VALUES (16,'Str_16')
	INTO "sample_class" ("id", "value") VALUES (17,'Str_17')
	INTO "sample_class" ("id", "value") VALUES (18,'Str_18')
	INTO "sample_class" ("id", "value") VALUES (19,'Str_19')
	INTO "sample_class" ("id", "value") VALUES (20,'Str_20')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @startId Int64
SET     @startId = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	s."value",
	s."id"
FROM
	"sample_class" t1
		INNER JOIN (
			SELECT * FROM "sample_class" where "id" >= :startId and "id" < :endId
		) s ON s."id" = t1."id"
WHERE
	s."id" > 10
ORDER BY
	s."id"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @startId Int32
SET     @startId = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	t."value",
	t."id"
FROM
	"sample_class" t
WHERE
	t."id" >= :startId AND t."id" < :endId AND t."id" > 10
ORDER BY
	t."id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "sample_class"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


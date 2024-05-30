BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleData"';
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
		CREATE TABLE "SampleData"
		(
			"Id"     Int NOT NULL,
			"Value1" Int NOT NULL,
			"Value2" Int NOT NULL,
			"Value3" Int NOT NULL,

			CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
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
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (1,10,100,1000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (2,20,200,2000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (3,30,300,3000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (4,40,400,4000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (5,50,500,5000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (6,60,600,6000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (7,70,700,7000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (8,80,800,8000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (9,90,900,9000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (10,100,1000,10000)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r_3."Value_1"
FROM
	(
		SELECT
			r."Id",
			r."Value1" as "Value_1"
		FROM
			"SampleData" r
		WHERE
			MOD(r."Id", 2) = 0
		MINUS
		SELECT
			r_1."Id",
			r_1."Value2" / 10 as "Value_1"
		FROM
			"SampleData" r_1
		WHERE
			MOD(r_1."Id", 4) = 0
		MINUS
		SELECT
			r_2."Id",
			r_2."Value1" as "Value_1"
		FROM
			"SampleData" r_2
		WHERE
			MOD(r_2."Id", 6) = 0
	) r_3

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


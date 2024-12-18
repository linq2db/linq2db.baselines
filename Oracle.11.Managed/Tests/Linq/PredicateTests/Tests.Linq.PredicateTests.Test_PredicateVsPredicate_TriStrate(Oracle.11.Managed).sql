BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
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
		CREATE TABLE "BooleanTable"
		(
			"Id"     Int NOT NULL,
			"Value1" Int NOT NULL,
			"Value2" Int NOT NULL,
			"Value4" Int     NULL,
			"Value5" Int     NULL
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
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (1,0,0,NULL,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (2,0,0,NULL,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (3,0,0,NULL,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (4,0,0,0,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (5,0,0,0,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (6,0,0,0,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (7,0,0,1,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (8,0,0,1,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (9,0,0,1,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (10,0,1,NULL,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (11,0,1,NULL,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (12,0,1,NULL,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (13,0,1,0,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (14,0,1,0,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (15,0,1,0,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (16,0,1,1,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (17,0,1,1,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (18,0,1,1,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (19,1,0,NULL,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (20,1,0,NULL,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (21,1,0,NULL,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (22,1,0,0,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (23,1,0,0,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (24,1,0,0,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (25,1,0,1,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (26,1,0,1,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (27,1,0,1,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (28,1,1,NULL,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (29,1,1,NULL,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (30,1,1,NULL,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (31,1,1,0,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (32,1,1,0,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (33,1,1,0,1)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (34,1,1,1,NULL)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (35,1,1,1,0)
	INTO "BooleanTable" ("Id", "Value1", "Value2", "Value4", "Value5") VALUES (36,1,1,1,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value1" = r."Value2") = (r."Value4" = r."Value5") AND
	(r."Value4" = r."Value5") IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


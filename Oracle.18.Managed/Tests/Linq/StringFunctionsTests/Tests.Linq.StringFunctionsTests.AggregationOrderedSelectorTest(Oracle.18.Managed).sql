BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleClass"
		(
			"Id"     Int          NOT NULL,
			"Value1" VarChar(50)      NULL,
			"Value2" VarChar(50)      NULL,
			"Value3" VarChar(50)      NULL,
			"Value4" VarChar2(50)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "SampleClass" ("Id", "Value1", "Value2", "Value3", "Value4") VALUES (1,'V1','V2',NULL,'V4')
	INTO "SampleClass" ("Id", "Value1", "Value2", "Value3", "Value4") VALUES (2,NULL,'Z2',NULL,NULL)
	INTO "SampleClass" ("Id", "Value1", "Value2", "Value3", "Value4") VALUES (3,'Z1',NULL,NULL,'Z4')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(g_1."Value1", ' -> ') WITHIN GROUP (ORDER BY g_1."Value3", g_1."Value1" DESC)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


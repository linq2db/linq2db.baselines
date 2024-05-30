BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GroupSampleClass"';
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
		CREATE TABLE "GroupSampleClass"
		(
			"Id1"   Int NOT NULL,
			"Id2"   Int NOT NULL,
			"Value" Int NOT NULL
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
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (1,1,1)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (2,2,0)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (3,0,1)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (4,1,0)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (5,2,1)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (6,0,0)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (7,1,1)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (8,2,0)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (9,0,1)
	INTO "GroupSampleClass" ("Id1", "Id2", "Value") VALUES (10,1,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	gg."Id1",
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			g_1."Id1",
			g_1."Id2",
			g_1."Value" as "Value_1"
		FROM
			"GroupSampleClass" g_1
	) gg
GROUP BY GROUPING SETS (
	(gg."Id1", gg."Id2"),
	(gg."Id2"),
	()
)
HAVING
	COUNT(*) > 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GroupSampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
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
		CREATE TABLE "TakeSkipClass"
		(
			"Value" VarChar(10)     NULL
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
	INTO "TakeSkipClass" ("Value") VALUES ('Value1')
	INTO "TakeSkipClass" ("Value") VALUES ('Value2')
	INTO "TakeSkipClass" ("Value") VALUES ('Value3')
	INTO "TakeSkipClass" ("Value") VALUES ('Value4')
	INTO "TakeSkipClass" ("Value") VALUES ('Value5')
	INTO "TakeSkipClass" ("Value") VALUES ('Value6')
	INTO "TakeSkipClass" ("Value") VALUES ('Value7')
	INTO "TakeSkipClass" ("Value") VALUES ('Value8')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."Value_1"
FROM
	(
		SELECT
			t1."Value" as "Value_1"
		FROM
			"TakeSkipClass" t1
		ORDER BY
			t1."Value"
	) t2
WHERE
	ROWNUM <= 1
ORDER BY
	t2."Value_1"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


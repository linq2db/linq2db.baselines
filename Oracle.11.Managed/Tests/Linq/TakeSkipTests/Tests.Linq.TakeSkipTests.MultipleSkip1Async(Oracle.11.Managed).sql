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
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('PIPPO')
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 2

SELECT
	t3."Value_1"
FROM
	(
		SELECT
			t2."Value_1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."Value" as "Value_1"
				FROM
					"TakeSkipClass" t1
				ORDER BY
					t1."Value"
			) t2
	) t3
WHERE
	t3.RN > :skip + :skip_1

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


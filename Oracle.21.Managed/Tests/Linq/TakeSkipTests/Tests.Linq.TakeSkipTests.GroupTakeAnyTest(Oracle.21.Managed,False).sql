BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "TakeSkipClass" ("Value") VALUES ('PIPPO')
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				item_1."Value"
			FROM
				"TakeSkipClass" item_1
			GROUP BY
				item_1."Value"
			HAVING
				COUNT(*) > 1
			FETCH NEXT 1 ROWS ONLY
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


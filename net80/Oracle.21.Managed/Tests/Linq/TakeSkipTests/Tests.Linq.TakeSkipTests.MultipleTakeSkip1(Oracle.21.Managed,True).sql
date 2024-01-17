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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3
DECLARE @skip_1 Int32
SET     @skip_1 = 1

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS FETCH NEXT :skip_1 ROWS ONLY 

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


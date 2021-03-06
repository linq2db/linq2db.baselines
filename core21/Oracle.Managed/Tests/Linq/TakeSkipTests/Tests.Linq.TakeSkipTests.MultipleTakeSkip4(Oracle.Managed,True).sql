﻿BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "TakeSkipClass" ("Value") VALUES ('Value1')
	INTO "TakeSkipClass" ("Value") VALUES ('Value2')
	INTO "TakeSkipClass" ("Value") VALUES ('Value3')
	INTO "TakeSkipClass" ("Value") VALUES ('Value4')
	INTO "TakeSkipClass" ("Value") VALUES ('Value5')
	INTO "TakeSkipClass" ("Value") VALUES ('Value6')
	INTO "TakeSkipClass" ("Value") VALUES ('Value7')
	INTO "TakeSkipClass" ("Value") VALUES ('Value8')
	INTO "TakeSkipClass" ("Value") VALUES ('Value9')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip_3 Int32
SET     @skip_3 = 3
DECLARE @take_3 Int32
SET     @take_3 = 2

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip_3 ROWS FETCH NEXT :take_3 ROWS ONLY 

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


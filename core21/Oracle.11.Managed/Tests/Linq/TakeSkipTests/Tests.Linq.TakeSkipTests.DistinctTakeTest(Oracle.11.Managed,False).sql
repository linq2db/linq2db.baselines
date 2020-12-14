BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('PIPPO')
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t2."Value_1"
FROM
	(
		SELECT DISTINCT
			t1."Value" as "Value_1"
		FROM
			"TakeSkipClass" t1
	) t2
WHERE
	ROWNUM <= 3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TakeSkipClass"


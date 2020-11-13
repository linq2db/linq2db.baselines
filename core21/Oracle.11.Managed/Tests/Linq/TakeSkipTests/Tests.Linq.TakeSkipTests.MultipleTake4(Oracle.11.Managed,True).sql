﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take_2 Int32
SET     @take_2 = 1

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
	ROWNUM <= :take_2

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TakeSkipClass"


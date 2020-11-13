BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('PIPPO')
	INTO "TakeSkipClass" ("Value") VALUES ('PLUTO')
	INTO "TakeSkipClass" ("Value") VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	t1."Value"
FROM
	"TakeSkipClass" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TakeSkipClass"


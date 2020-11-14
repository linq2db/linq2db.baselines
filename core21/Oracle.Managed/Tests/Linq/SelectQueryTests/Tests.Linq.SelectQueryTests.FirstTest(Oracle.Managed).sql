BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	CURRENT_TIMESTAMP + 1 * INTERVAL '1' DAY,
	CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY
FROM SYS.DUAL
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "SampleClass"


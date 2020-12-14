BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "SelectExpressionTable"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "SelectExpressionTable" (ID) VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	"SelectExpressionTable" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "SelectExpressionTable"


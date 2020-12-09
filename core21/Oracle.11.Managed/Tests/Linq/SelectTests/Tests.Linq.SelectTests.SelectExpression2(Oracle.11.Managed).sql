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
DECLARE @p_1 Raw(16) -- Binary
SET     @p_1 = HEXTORAW('1CB5D9B3F9892A44893BCD8A6F667D37')
DECLARE @p_2 Raw(16) -- Binary
SET     @p_2 = HEXTORAW('D4DCEF619D65E841910C506A9C2F31C5')
DECLARE @take Int32
SET     @take = 1

SELECT
	:p_1,
	:p_2
FROM
	"SelectExpressionTable" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "SelectExpressionTable"


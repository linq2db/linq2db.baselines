BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE SelectExpressionTable
(
	ID Int NOT NULL,

	CONSTRAINT PK_SelectExpressionTable PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO SelectExpressionTable (ID) VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Raw(16) -- Binary
SET     @p1 = HEXTORAW('1CB5D9B3F9892A44893BCD8A6F667D37')
DECLARE @p2 Raw(16) -- Binary
SET     @p2 = HEXTORAW('D4DCEF619D65E841910C506A9C2F31C5')
DECLARE @take Int32
SET     @take = 1

SELECT 
	:p1, 
	:p2
FROM
	SelectExpressionTable t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE SelectExpressionTable


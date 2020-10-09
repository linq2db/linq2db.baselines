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
DECLARE @take Int32
SET     @take = 1

SELECT 
	1
FROM
	SelectExpressionTable t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE SelectExpressionTable


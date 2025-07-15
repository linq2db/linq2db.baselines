BeforeExecute
-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	't'::BOOLEAN
FROM
	SelectExpressionTable t1


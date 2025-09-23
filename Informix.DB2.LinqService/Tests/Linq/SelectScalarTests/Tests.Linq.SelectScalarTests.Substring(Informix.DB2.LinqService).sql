BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	Substr('123', 2, @p::Int)
FROM table(set{1})


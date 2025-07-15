BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 5

SELECT
	@p::Int
FROM table(set{1})


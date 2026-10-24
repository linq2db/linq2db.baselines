-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 0

SELECT
	t.Id
FROM
	CountTarget t
WHERE
	t.ItemsCount = @p AND t.EmptyCount = @p_1


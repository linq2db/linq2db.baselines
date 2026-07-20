-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2

SELECT FIRST 1
	@p::Int,
	c_1.Id
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id = @p_1


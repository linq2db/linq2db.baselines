-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	MIN(c_1.Id)
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id > @p


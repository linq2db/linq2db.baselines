-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	testparams t
SET
	_p = @p::Int
WHERE
	t._p = 1


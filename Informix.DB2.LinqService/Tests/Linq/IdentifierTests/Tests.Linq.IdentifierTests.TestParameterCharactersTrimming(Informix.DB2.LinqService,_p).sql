BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

UPDATE
	testparams t
SET
	_p = @p
WHERE
	t._p = 1


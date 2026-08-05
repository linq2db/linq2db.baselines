-- Informix.DB2 Informix
DECLARE @p_p Integer(4) -- Int32
SET     @p_p = 2

UPDATE
	testparams t
SET
	p_p = @p_p
WHERE
	t.p_p = 1


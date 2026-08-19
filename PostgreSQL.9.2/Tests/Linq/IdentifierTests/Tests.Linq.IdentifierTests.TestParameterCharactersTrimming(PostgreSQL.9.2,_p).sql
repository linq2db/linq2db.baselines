-- PostgreSQL.9.2 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	testparams
SET
	_p = :p
WHERE
	testparams._p = 1


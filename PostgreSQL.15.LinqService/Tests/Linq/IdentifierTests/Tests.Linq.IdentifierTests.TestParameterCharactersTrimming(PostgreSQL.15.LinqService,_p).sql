BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	testparams
SET
	_p = :p
WHERE
	testparams._p = 1


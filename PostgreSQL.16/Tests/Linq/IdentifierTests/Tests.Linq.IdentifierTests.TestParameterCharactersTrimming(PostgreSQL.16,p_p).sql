BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	testparams
SET
	p_p = :p_p
WHERE
	testparams.p_p = 1


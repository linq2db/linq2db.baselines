BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	testparams
SET
	"1p" = :p
WHERE
	testparams."1p" = 1


-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	testparams
SET
	"from" = :from
WHERE
	testparams."from" = 1


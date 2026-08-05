-- PostgreSQL.18 PostgreSQL12
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	testparams
SET
	"from" = :from
WHERE
	testparams."from" = 1


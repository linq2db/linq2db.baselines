-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	testparams
SET
	"Test名前" = :Test
WHERE
	testparams."Test名前" = 1


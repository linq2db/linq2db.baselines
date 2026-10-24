-- PostgreSQL.9.3 PostgreSQL
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	testparams
SET
	"TestИмя" = :Test
WHERE
	testparams."TestИмя" = 1


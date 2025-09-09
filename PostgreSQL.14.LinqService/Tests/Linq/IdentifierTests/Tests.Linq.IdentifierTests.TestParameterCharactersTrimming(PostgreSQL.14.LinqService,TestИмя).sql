BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	testparams
SET
	"TestИмя" = :Test
WHERE
	testparams."TestИмя" = 1


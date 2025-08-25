BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	testparams
SET
	"Test-Name" = :TestName
WHERE
	testparams."Test-Name" = 1


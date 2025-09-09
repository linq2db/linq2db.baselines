BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	testparams
SET
	"Test-Name" = :TestName
WHERE
	testparams."Test-Name" = 1


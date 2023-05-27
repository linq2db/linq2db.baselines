BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test-Name"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test-Name"
(
	"Test-Name" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	"Test-Name"
SET
	"Test-Name" = :TestName
WHERE
	"Test-Name"."Test-Name" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test-Name"


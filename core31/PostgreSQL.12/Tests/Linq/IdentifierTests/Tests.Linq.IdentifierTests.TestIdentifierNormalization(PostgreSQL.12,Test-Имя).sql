BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test-Имя"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test-Имя"
(
	"Test-Имя" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	"Test-Имя"
SET
	"Test-Имя" = :Test
WHERE
	"Test-Имя"."Test-Имя" = 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test-Имя"


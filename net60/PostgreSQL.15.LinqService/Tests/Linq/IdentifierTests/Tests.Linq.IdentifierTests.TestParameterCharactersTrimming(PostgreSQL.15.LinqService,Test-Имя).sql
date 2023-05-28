BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	"Test-Имя" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	testparams
SET
	"Test-Имя" = :Test
WHERE
	testparams."Test-Имя" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


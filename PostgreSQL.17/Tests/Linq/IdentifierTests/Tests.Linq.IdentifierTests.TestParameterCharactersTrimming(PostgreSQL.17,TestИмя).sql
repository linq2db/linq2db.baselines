BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	"TestИмя" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	testparams
SET
	"TestИмя" = :Test
WHERE
	testparams."TestИмя" = 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


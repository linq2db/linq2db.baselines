BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	"Test-葛󠄀城市-End" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @TestEnd Integer -- Int32
SET     @TestEnd = 2

UPDATE
	testparams
SET
	"Test-葛󠄀城市-End" = :TestEnd
WHERE
	testparams."Test-葛󠄀城市-End" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


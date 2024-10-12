BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	"1p" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	testparams
SET
	"1p" = :p
WHERE
	testparams."1p" = 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


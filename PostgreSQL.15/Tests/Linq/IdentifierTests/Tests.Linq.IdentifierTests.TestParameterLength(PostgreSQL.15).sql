BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	col1      Int NOT NULL,
	"Column1" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

UPDATE
	testparams
SET
	col1 = 2
WHERE
	testparams."Column1" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


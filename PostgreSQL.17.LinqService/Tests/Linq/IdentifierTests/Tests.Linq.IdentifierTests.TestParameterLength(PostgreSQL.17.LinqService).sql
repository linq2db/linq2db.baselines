BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	col1      Int NOT NULL,
	"Column1" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @A123456789b123456789c123456789d123456789e123456789 Integer -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	testparams
SET
	col1 = :A123456789b123456789c123456789d123456789e123456789
WHERE
	testparams."Column1" = 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	"TestИмя" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

UPDATE
	testparams
SET
	"TestИмя" = 2
WHERE
	testparams."TestИмя" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS testparams


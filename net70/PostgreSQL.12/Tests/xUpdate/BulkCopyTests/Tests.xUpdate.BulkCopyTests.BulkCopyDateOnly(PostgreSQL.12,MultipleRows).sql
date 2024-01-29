BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateOnlyTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DateOnlyTable"
(
	"Date" Date NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01'::date)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateOnlyTable"


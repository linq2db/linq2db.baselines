BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateOnlyTable"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "DateOnlyTable"
(
	"Date" Date NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Date Date
SET     @Date = '2021-01-01'::date

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	:Date
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "DateOnlyTable"


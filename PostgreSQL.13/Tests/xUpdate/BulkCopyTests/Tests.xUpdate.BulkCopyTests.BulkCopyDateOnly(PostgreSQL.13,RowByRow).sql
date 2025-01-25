BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


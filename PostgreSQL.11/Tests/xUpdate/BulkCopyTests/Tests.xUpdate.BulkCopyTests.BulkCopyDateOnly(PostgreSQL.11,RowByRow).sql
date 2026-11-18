-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


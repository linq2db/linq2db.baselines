-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


-- PostgreSQL.19 PostgreSQL12
INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01'::date)

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


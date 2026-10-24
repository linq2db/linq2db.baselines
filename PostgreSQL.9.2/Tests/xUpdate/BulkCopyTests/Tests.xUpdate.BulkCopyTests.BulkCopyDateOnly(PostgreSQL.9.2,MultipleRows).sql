-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01'::date)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


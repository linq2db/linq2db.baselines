-- PostgreSQL.13 PostgreSQL13

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01'::date)

-- PostgreSQL.13 PostgreSQL13

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


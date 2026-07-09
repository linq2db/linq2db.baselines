-- PostgreSQL.18 PostgreSQL12

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01'::date)

-- PostgreSQL.18 PostgreSQL12

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


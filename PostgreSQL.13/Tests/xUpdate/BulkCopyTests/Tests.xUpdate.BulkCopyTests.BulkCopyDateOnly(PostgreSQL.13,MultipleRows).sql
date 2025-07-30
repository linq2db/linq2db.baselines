BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
('2021-01-01'::date)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2


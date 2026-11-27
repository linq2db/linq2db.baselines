-- PostgreSQL.9.5 PostgreSQL
DECLARE @Interval Interval -- Object
SET     @Interval = P-4DT-6H-5M-4S-876s-876600n

INSERT INTO "PeriodIntervalTable"
(
	"Interval"
)
VALUES
(
	:Interval
)

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Interval"
FROM
	"PeriodIntervalTable" t1
LIMIT 2


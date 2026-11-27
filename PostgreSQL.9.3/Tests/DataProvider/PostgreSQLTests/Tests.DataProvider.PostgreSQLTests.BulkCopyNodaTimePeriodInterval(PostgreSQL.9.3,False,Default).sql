-- PostgreSQL.9.3 PostgreSQL
DECLARE @:p1 Interval -- Object
SET     @:p1 = P-4DT-6H-5M-4S-876s-876600n

INSERT INTO "PeriodIntervalTable"
(
	"Interval"
)
VALUES
(:p1)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Interval"
FROM
	"PeriodIntervalTable" t1
LIMIT 2


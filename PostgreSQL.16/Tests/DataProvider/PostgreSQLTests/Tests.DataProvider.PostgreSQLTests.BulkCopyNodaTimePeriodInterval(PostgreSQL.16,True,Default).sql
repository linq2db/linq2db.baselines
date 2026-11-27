-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @:p1 Interval -- Object
SET     @:p1 = P-4DT-6H-5M-4S-876s-876600n

INSERT INTO "PeriodIntervalTable"
(
	"Interval"
)
VALUES
(:p1)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Interval"
FROM
	"PeriodIntervalTable" t1
LIMIT 2


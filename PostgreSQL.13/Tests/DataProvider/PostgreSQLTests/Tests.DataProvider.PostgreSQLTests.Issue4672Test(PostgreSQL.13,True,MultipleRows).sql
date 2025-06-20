BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @:p1 Interval -- Object
SET     @:p1 = P-4DT-6H-5M-4S-876s-876600n

INSERT INTO "Issue4672Table"
(
	"Interval"
)
VALUES
(:p1)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Interval"
FROM
	"Issue4672Table" t1
LIMIT 2


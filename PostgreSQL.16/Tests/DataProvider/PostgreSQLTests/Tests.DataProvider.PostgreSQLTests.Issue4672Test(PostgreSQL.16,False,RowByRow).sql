BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Interval Interval -- Object
SET     @Interval = P-4DT-6H-5M-4S-876s-876600n

INSERT INTO "Issue4672Table"
(
	"Interval"
)
VALUES
(
	:Interval
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Interval"
FROM
	"Issue4672Table" t1
LIMIT 2


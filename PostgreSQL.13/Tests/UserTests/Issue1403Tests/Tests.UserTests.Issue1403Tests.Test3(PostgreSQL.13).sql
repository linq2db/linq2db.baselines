-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue1403Tests_3"
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.event_id,
	t1.event_description
FROM
	"Issue1403Tests_3" t1
LIMIT 1


-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1.event_id,
	t1.event_description
FROM
	"Issue1403Tests_3" t1
LIMIT 1


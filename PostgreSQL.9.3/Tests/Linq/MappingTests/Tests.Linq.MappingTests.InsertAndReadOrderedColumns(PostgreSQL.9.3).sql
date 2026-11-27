-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "OrderedColumnsRecord"
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1.event_id,
	t1.event_description
FROM
	"OrderedColumnsRecord" t1
LIMIT 1


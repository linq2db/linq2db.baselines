-- PostgreSQL.12 PostgreSQL12
INSERT INTO "OrderedColumnsDerivedRecord"
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1.event_id,
	t1.event_description
FROM
	"OrderedColumnsDerivedRecord" t1
LIMIT 1


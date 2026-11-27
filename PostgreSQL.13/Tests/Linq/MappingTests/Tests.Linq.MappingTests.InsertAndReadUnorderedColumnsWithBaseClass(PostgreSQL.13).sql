-- PostgreSQL.13 PostgreSQL12
INSERT INTO "UnorderedColumnsDerivedRecord"
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1.event_id,
	t1.event_description
FROM
	"UnorderedColumnsDerivedRecord" t1
LIMIT 1


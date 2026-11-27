-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1.event_id,
	t1.event_description
FROM
	"UnorderedColumnsDerivedRecord" t1
LIMIT 1


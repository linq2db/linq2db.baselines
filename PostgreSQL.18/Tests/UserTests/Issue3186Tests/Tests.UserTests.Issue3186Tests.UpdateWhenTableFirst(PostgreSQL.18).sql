-- PostgreSQL.18 PostgreSQL
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	component_categories
SET
	is_deleted = :is_deleted
FROM
	element_services sr,
	"Components" cm
WHERE
	sr.id = 'TestProcessService' AND
	sr.id = component_categories.service_id AND
	component_categories.id = cm.category_id AND
	NOT cm.is_deleted

-- PostgreSQL.18 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted AND x.service_id = 'TestProcessService'

-- PostgreSQL.18 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	NOT x.is_deleted AND x.service_id <> 'TestProcessService'


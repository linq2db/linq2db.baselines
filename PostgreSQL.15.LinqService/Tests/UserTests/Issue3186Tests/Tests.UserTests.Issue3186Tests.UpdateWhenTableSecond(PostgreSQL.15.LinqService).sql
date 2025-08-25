BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	component_categories
SET
	is_deleted = :is_deleted
FROM
	element_services ct
		INNER JOIN component_categories ctg ON ct.id = ctg.service_id
		INNER JOIN "Components" cm ON ctg.id = cm.category_id AND NOT cm.is_deleted
WHERE
	ct.id = 'TestProcessService' AND component_categories.id = ctg.id

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted AND x.service_id = 'TestProcessService'

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	NOT x.is_deleted AND x.service_id <> 'TestProcessService'


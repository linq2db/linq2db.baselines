-- PostgreSQL.9.3 PostgreSQL
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	"ComponentCategoryRow"
SET
	is_deleted = :is_deleted
FROM
	"ComponentCategoryRow" ct
		INNER JOIN "ElementServiceRow" sr ON sr.id = ct.service_id
		LEFT JOIN "ComponentRow" cm ON ct.id = cm.category_id AND NOT cm.is_deleted
WHERE
	sr.id = 'TestProcessService' AND "ComponentCategoryRow".id = ct.id

-- PostgreSQL.9.3 PostgreSQL
SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	"ComponentCategoryRow" x
WHERE
	x.is_deleted AND x.service_id = 'TestProcessService'

-- PostgreSQL.9.3 PostgreSQL
SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	"ComponentCategoryRow" x
WHERE
	NOT x.is_deleted AND x.service_id <> 'TestProcessService'


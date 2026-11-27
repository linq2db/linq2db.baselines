-- PostgreSQL.9.5 PostgreSQL
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	"ComponentCategoryRow"
SET
	is_deleted = :is_deleted
FROM
	"ElementServiceRow" sr,
	"ComponentRow" cm
WHERE
	sr.id = 'TestProcessService' AND
	sr.id = "ComponentCategoryRow".service_id AND
	"ComponentCategoryRow".id = cm.category_id AND
	NOT cm.is_deleted

-- PostgreSQL.9.5 PostgreSQL
SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	"ComponentCategoryRow" x
WHERE
	x.is_deleted AND x.service_id = 'TestProcessService'

-- PostgreSQL.9.5 PostgreSQL
SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	"ComponentCategoryRow" x
WHERE
	NOT x.is_deleted AND x.service_id <> 'TestProcessService'


-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	"ComponentCategoryRow" x
WHERE
	x.is_deleted AND x.service_id = 'TestProcessService'

-- PostgreSQL.18 PostgreSQL12
SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	"ComponentCategoryRow" x
WHERE
	NOT x.is_deleted AND x.service_id <> 'TestProcessService'


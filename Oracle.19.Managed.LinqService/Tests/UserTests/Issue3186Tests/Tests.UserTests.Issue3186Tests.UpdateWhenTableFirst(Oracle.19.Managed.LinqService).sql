﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @is_deleted Int16
SET     @is_deleted = 1

UPDATE
	"component_categories"
SET
	"is_deleted" = :is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"component_categories" ct
				INNER JOIN "element_services" sr ON sr."id" = ct."service_id"
				INNER JOIN "Components" cm ON ct."id" = cm."category_id" AND cm."is_deleted" = 0
		WHERE
			sr."id" = 'TestProcessService' AND "component_categories"."id" = ct."id"
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"component_categories" x
WHERE
	x."is_deleted" = 1 AND x."service_id" = 'TestProcessService'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"component_categories" x
WHERE
	x."is_deleted" = 0 AND x."service_id" <> 'TestProcessService'


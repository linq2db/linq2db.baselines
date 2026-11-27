-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @is_deleted Int16
SET     @is_deleted = 1

UPDATE
	"ComponentCategoryRow"
SET
	"is_deleted" = :is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"ComponentCategoryRow" ct
				INNER JOIN "ElementServiceRow" sr ON sr."id" = ct."service_id"
				LEFT JOIN "ComponentRow" cm ON ct."id" = cm."category_id" AND cm."is_deleted" = 0
		WHERE
			sr."id" = 'TestProcessService' AND "ComponentCategoryRow"."id" = ct."id"
	)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	x."id",
	x."service_id",
	x."is_deleted"
FROM
	"ComponentCategoryRow" x
WHERE
	x."is_deleted" = 1 AND x."service_id" = 'TestProcessService'

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	x."id",
	x."service_id",
	x."is_deleted"
FROM
	"ComponentCategoryRow" x
WHERE
	x."is_deleted" = 0 AND x."service_id" <> 'TestProcessService'


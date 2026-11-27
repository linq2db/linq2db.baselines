-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id"
FROM
	"SqlPropertyAssociationEntity" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SqlPropertyAssociationRelation" r
		WHERE
			r."Deleted" = False AND r."EntityId" = t."Id"
	)


-- PostgreSQL.15 PostgreSQL12
SELECT
	t."Id"
FROM
	"SqlPropertyAssociationEntity" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SqlPropertyAssociationRelation" a_relationship
		WHERE
			t."Id" = a_relationship."EntityId"
	)


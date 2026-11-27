-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	(
		SELECT
			se."Value"
		FROM
			"StringAssociationValue" se
		WHERE
			se."Id" = t1."Id"
		LIMIT 1
	)
FROM
	"StringAssociationOwner" t1


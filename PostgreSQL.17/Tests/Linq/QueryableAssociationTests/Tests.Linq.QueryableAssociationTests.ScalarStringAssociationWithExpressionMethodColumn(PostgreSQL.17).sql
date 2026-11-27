-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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


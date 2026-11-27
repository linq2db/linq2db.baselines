-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
	),
	(
		SELECT
			"a_Association"."Value"
		FROM
			"StringAssociationValue" "a_Association"
		WHERE
			"a_Association"."Id" = t1."Id"
		LIMIT 1
	)
FROM
	"StringAssociationOwner" t1


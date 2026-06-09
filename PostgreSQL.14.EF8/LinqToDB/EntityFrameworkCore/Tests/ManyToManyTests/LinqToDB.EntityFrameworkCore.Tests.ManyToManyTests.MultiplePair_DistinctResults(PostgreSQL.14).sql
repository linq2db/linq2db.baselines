-- PostgreSQL.13 PostgreSQL

SELECT
	u."Id"
FROM
	"Users" u
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MmMembership" t
				INNER JOIN "Teams" o ON o."Id" = t."TeamId"
		WHERE
			u."Id" = t."UserId" AND o."Name" = 'Team1'
	)



-- PostgreSQL.13 PostgreSQL

SELECT
	u."Id"
FROM
	"Users" u
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MmLeadership" t
				INNER JOIN "Teams" o ON o."Id" = t."TeamId"
		WHERE
			u."Id" = t."UserId" AND o."Name" = 'Team1'
	)




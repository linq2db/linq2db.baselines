SELECT u."Id"
FROM "Users" AS u
WHERE EXISTS (
    SELECT 1
    FROM "MmLeadership" AS m
    INNER JOIN "Teams" AS t ON m."TeamId" = t."Id"
    WHERE u."Id" = m."UserId" AND t."Name" = 'Team1')
ORDER BY u."Id"


-- PostgreSQL.18 PostgreSQL

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
ORDER BY
	u."Id"




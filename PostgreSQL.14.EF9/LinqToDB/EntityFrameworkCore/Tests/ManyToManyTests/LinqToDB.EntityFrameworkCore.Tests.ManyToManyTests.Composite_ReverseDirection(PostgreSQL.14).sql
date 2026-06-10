SELECT m."Id"
FROM "Members" AS m
WHERE EXISTS (
    SELECT 1
    FROM "MmProjectMember" AS m0
    INNER JOIN "Projects" AS p ON m0."OrgId" = p."OrgId" AND m0."Code" = p."Code"
    WHERE m."Id" = m0."MemberId" AND p."Name" = 'Alpha')
ORDER BY m."Id"


-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."Id"
FROM
	"Members" m_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MmProjectMember" p
				INNER JOIN "Projects" o ON o."OrgId" = p."OrgId" AND o."Code" = p."Code"
		WHERE
			m_1."Id" = p."MemberId" AND o."Name" = 'Alpha'
	)
ORDER BY
	m_1."Id"




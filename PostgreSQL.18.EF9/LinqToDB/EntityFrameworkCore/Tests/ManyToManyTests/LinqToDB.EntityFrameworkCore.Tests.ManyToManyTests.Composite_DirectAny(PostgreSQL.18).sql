SELECT p."Code"
FROM "Projects" AS p
WHERE EXISTS (
    SELECT 1
    FROM "MmProjectMember" AS m
    INNER JOIN "Members" AS m0 ON m."MemberId" = m0."Id"
    WHERE p."OrgId" = m."OrgId" AND p."Code" = m."Code" AND m0."Name" = 'Eve')
ORDER BY p."Code"


-- PostgreSQL.18 PostgreSQL

SELECT
	p."Code"
FROM
	"Projects" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MmProjectMember" m_1
				INNER JOIN "Members" o ON o."Id" = m_1."MemberId"
		WHERE
			p."OrgId" = m_1."OrgId" AND p."Code" = m_1."Code" AND
			o."Name" = 'Eve'
	)
ORDER BY
	p."Code"




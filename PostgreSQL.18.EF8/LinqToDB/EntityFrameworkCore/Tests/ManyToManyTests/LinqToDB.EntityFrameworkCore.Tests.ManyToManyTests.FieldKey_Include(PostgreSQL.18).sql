SELECT r."Id", r."Name", t."AccountsAccountId", t."RolesId", t.account_id_col, t."Name"
FROM "Roles" AS r
LEFT JOIN (
    SELECT m."AccountsAccountId", m."RolesId", a.account_id_col, a."Name"
    FROM "MmAccountMmRole" AS m
    INNER JOIN "Accounts" AS a ON m."AccountsAccountId" = a.account_id_col
) AS t ON r."Id" = t."RolesId"
ORDER BY r."Id", t."AccountsAccountId", t."RolesId"




-- PostgreSQL.18 PostgreSQL

SELECT
	m_1."Id",
	o."Name"
FROM
	"Roles" m_1
		INNER JOIN "MmAccountMmRole" d ON m_1."Id" = d."RolesId"
		INNER JOIN "Accounts" o ON o.account_id_col = d."AccountsAccountId"
ORDER BY
	m_1."Id"





-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Roles" t1
ORDER BY
	t1."Id"




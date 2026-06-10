SELECT p."Id", p."Name", s."FriendId", s."PersonId", s."Id", s."Name"
FROM "People" AS p
LEFT JOIN (
    SELECT m."FriendId", m."PersonId", p0."Id", p0."Name"
    FROM "MmFriendship" AS m
    INNER JOIN "People" AS p0 ON m."FriendId" = p0."Id"
) AS s ON p."Id" = s."PersonId"
ORDER BY p."Id", s."FriendId", s."PersonId"




-- PostgreSQL.13 PostgreSQL

SELECT
	m_1."Id",
	o."Id",
	o."Name"
FROM
	"People" m_1
		INNER JOIN "MmFriendship" d ON m_1."Id" = d."PersonId"
		INNER JOIN "People" o ON o."Id" = d."FriendId"
ORDER BY
	m_1."Id"





-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"People" t1
ORDER BY
	t1."Id"




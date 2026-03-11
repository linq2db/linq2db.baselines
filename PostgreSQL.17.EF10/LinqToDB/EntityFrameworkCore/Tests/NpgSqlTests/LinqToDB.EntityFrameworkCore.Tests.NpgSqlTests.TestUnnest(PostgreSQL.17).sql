-- PostgreSQL.15 PostgreSQL
DECLARE @guids -2147483621 -- Object
SET     @guids = {'271425b1-ebe8-400d-b71d-a6e47a460ae3'::uuid,'b75de94e-6d7b-4c70-bfa1-f8639a6a5b35'::uuid}

SELECT
	m_1."Id",
	m_1."Guids"
FROM
	"EntityWithArrays" m_1
		INNER JOIN LATERAL UNNEST(m_1."Guids") g_1(value) ON 1=1
WHERE
	m_1."Guids" && :guids




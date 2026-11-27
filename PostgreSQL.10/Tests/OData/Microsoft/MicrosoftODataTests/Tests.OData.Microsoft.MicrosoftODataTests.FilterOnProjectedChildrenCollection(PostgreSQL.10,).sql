-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."ID",
	m_1."ValS",
	d."ID",
	d."ValB",
	d."ValInt"
FROM
	"ODataLevel1Entity" m_1
		INNER JOIN "ODataLevel2Entity" d ON m_1."ID" = d."ParentId"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	l1."ID",
	l1."ValB",
	l1."ValS",
	l1."ValInt"
FROM
	"ODataLevel1Entity" l1


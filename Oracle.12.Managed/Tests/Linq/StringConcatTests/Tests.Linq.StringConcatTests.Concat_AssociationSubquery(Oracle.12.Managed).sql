-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	Coalesce((
		SELECT
			LISTAGG(Coalesce(a_Children."Value", ''), '') WITHIN GROUP (ORDER BY a_Children."Id")
		FROM
			"ConcatChild" a_Children
		WHERE
			p."Id" = a_Children."ParentId"
	), '')
FROM
	"ConcatParent" p
ORDER BY
	p."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d."ParentId",
	d."Value"
FROM
	"ConcatParent" m_1
		INNER JOIN "ConcatChild" d ON m_1."Id" = d."ParentId"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"ConcatParent" t1


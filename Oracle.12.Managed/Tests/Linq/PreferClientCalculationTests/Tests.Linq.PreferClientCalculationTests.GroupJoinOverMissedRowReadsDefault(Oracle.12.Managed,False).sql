-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	e."Id",
	CAST(Coalesce(j."Value1", 0) AS VarChar(255)),
	Coalesce(j."Value1", 0) + 1
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON e."Id" + 1000 = j."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Value1",
	t1."Date",
	t1."Key",
	t1."Name"
FROM
	"TranslatedMemberEntity" t1


BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	p."Str"
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str' AS VarChar(255))
FROM
	"Issue3360Table" p_1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	CAST('str' AS VarChar(255))
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	p_1."Str"
FROM
	"Issue3360Table" p_1


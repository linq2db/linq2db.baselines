﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	CAST('str1' AS VarChar(255))
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str2' AS VarChar(255))
FROM
	"Issue3360Table" p_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	CAST('str2' AS VarChar(255))
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str1' AS VarChar(255))
FROM
	"Issue3360Table" p_1


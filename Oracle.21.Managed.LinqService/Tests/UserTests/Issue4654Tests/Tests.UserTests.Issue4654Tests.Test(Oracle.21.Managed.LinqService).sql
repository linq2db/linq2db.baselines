﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CAST(c_1."Id" AS VarChar(4000)),
	c_1."Name"
FROM
	"Issue4654Customer" c_1
UNION
SELECT
	CAST(o."Id" AS VarChar(4000)),
	o."ProductName"
FROM
	"Issue4654Order" o
UNION
SELECT
	CAST(p."Id" AS VarChar(4000)),
	p."Name"
FROM
	"Issue4654Product" p


﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."Id",
	a_Child."Id",
	a_Child."Name"
FROM
	"Issue3140Parent" p
		LEFT JOIN "Issue3140Child" a_Child ON p."ChildId" = a_Child."Id"


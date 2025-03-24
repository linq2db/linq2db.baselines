﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t."Id",
	t."Value"
FROM
	"TableToInsert" t
		INNER JOIN (SELECT NULL "Id", NULL "Value" FROM sys.dual WHERE 1 = 0) r ON t."Id" = r."Id" AND (t."Value" = r."Value" OR t."Value" IS NULL AND r."Value" IS NULL)


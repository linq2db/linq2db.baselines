﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	NOT (p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') IS NULL)


﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))


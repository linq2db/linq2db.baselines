﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."Taxonomy"
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'


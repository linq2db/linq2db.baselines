﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."Taxonomy"
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'


﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."Taxonomy"
FROM
	"Doctor" p
WHERE
	Lower(p."Taxonomy") = 'psychiatry'


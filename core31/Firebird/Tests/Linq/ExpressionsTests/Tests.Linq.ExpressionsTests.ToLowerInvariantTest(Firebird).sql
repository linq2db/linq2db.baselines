﻿BeforeExecute
-- Firebird

SELECT
	Lower("p"."Taxonomy")
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'


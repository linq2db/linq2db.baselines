﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."Taxonomy"
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'


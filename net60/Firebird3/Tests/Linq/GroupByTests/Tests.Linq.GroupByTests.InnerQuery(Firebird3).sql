﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT FIRST @take
			"d"."Taxonomy"
		FROM
			"Doctor" "d"
		WHERE
			"t1"."PersonID" = "d"."PersonID"
	)
FROM
	"Doctor" "t1"
GROUP BY
	"t1"."PersonID"


﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
GROUP BY
	"c_1"."ParentID"
HAVING
	COUNT(*) > 1 AND COUNT(*) > 1


﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 0

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			"ch"."ParentID" + 1 as "c1"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" > @n
	) "t1"
GROUP BY
	"t1"."c1"


﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT FIRST @take
			*
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
	) "t2"


﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	CASE
		WHEN "p"."Value1" = 1 THEN 10
		ELSE 20
	END = 20


﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p_1"."val"
FROM
	(
		SELECT
			"p"."ParentID" as "id",
			TRUE as "val"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"ch"."ParentID" as "id",
			FALSE as "val"
		FROM
			"Child" "ch"
	) "p_1"


﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p_2"."val"
FROM
	(
		SELECT
			"p"."ParentID" as "id",
			TRUE as "val"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"p_1"."ParentID" as "id",
			FALSE as "val"
		FROM
			"Parent" "p_1"
		UNION
		SELECT
			"ch"."ParentID" as "id",
			FALSE as "val"
		FROM
			"Child" "ch"
	) "p_2"


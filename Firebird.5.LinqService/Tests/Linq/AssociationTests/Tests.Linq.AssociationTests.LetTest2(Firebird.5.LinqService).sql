﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"t"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t"

BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"t"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t"


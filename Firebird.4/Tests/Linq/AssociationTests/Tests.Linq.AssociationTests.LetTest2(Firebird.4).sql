﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"t"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "t"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"t"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "t"


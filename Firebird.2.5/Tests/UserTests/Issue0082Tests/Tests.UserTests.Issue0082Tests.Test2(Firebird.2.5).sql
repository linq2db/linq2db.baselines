﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"o"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"o"."ParentID" = "a_Children"."ParentID"
	),
	(
		SELECT
			SUM("a_Children_1"."ParentID")
		FROM
			"Child" "a_Children_1"
		WHERE
			"o"."ParentID" = "a_Children_1"."ParentID"
	)
FROM
	"Parent" "o"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Parent" "o"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."ParentID",
	"x"."CountResult",
	"x".SUM_1
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" "a_Children"
				WHERE
					"o"."ParentID" = "a_Children"."ParentID"
			) as "CountResult",
			"o"."ParentID",
			(
				SELECT
					SUM("a_Children_1"."ParentID")
				FROM
					"Child" "a_Children_1"
				WHERE
					"o"."ParentID" = "a_Children_1"."ParentID"
			) as SUM_1
		FROM
			"Parent" "o"
	) "x"
WHERE
	"x"."CountResult" > 0


﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"o"."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"o"."ParentID" = "t1"."ParentID"
	),
	(
		SELECT
			Sum("od"."ParentID")
		FROM
			"Child" "od"
		WHERE
			"od"."ParentID" = "o"."ParentID"
	)
FROM
	"Parent" "o"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Parent" "o"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."ParentID",
	"x"."CountResult",
	"x"."Sum_1"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Child" "t1"
				WHERE
					"o"."ParentID" = "t1"."ParentID"
			) as "CountResult",
			"o"."ParentID",
			(
				SELECT
					Sum("od"."ParentID")
				FROM
					"Child" "od"
				WHERE
					"od"."ParentID" = "o"."ParentID"
			) as "Sum_1"
		FROM
			"Parent" "o"
	) "x"
WHERE
	"x"."CountResult" > 0


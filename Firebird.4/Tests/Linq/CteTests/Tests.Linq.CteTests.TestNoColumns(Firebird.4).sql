﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.4 Firebird4

WITH CTE1_ ("ParentID", "ChildID")
AS
(
	SELECT
		"t1"."ParentID",
		"t1"."ChildID"
	FROM
		"Child" "t1"
)
SELECT
	Count(*)
FROM
	CTE1_ "t2"

BeforeExecute
-- Firebird.4 Firebird4

WITH CTE1_ ("ChildID")
AS
(
	SELECT
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
)
SELECT
	Count(*)
FROM
	CTE1_ "t1"

BeforeExecute
-- Firebird.4 Firebird4

WITH CTE1_ ("ChildID")
AS
(
	SELECT
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				CTE1_ "t1"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database


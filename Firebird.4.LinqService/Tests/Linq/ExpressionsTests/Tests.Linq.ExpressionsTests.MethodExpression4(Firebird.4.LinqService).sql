﻿BeforeExecute
--  Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID" AND "c_1"."ChildID" > @n
	) + 4
FROM
	"Parent" "p"


﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	COUNT(CASE
		WHEN "g_1"."ParentID" + 1 < 3 THEN 1
		ELSE NULL
	END)
FROM
	"Child" "g_1"
WHERE
	"g_1"."ParentID" + 2 > ?
GROUP BY
	"g_1"."ParentID" + 1,
	"g_1"."ChildID"


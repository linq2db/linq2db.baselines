﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @someValue  -- Int32
SET     @someValue = 3
DECLARE @someValue_1  -- Int32
SET     @someValue_1 = 3
DECLARE @someValue_2  -- Int32
SET     @someValue_2 = 3
DECLARE @someValue_3  -- Int32
SET     @someValue_3 = 3

SELECT
	?,
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" <= ?
UNION ALL
SELECT
	?,
	"c_2"."ChildID"
FROM
	"Child" "c_2"
WHERE
	"c_2"."ChildID" > ?


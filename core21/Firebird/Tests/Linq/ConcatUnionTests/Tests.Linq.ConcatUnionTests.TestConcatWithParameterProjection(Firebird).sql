﻿BeforeExecute
-- Firebird
DECLARE @someValue Integer -- Int32
SET     @someValue = 3
DECLARE @someValue_1 Integer -- Int32
SET     @someValue_1 = 3
DECLARE @someValue_2 Integer -- Int32
SET     @someValue_2 = 3
DECLARE @someValue_3 Integer -- Int32
SET     @someValue_3 = 3

SELECT
	Cast(@someValue as Int),
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" <= @someValue_1
UNION ALL
SELECT
	Cast(@someValue_2 as Int),
	"c_2"."ChildID"
FROM
	"Child" "c_2"
WHERE
	"c_2"."ChildID" > @someValue_3


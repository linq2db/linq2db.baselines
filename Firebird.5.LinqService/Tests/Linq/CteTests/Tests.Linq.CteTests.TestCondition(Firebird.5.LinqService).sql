﻿BeforeExecute
--  Firebird.5 Firebird4
DECLARE @var3 Integer -- Int32
SET     @var3 = 1

WITH CTE_1 ("ChildID", "ParentID")
AS
(
	SELECT
		"t1"."ChildID",
		"t1"."ParentID"
	FROM
		"Child" "t1"
)
SELECT
	"t"."ParentID",
	"t"."ChildID"
FROM
	CTE_1 "t"
WHERE
	"t"."ChildID" = @var3


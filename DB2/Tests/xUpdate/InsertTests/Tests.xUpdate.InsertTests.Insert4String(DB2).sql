﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	CAST(@id AS Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 111


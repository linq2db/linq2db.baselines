﻿BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT FIRST 1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p

BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT FIRST 1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p


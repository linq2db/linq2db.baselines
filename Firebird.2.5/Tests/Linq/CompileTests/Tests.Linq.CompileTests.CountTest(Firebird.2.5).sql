﻿BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p

BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @p


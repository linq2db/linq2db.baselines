﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	MAX("c_1"."ParentID")
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	MAX("c_1"."ParentID")
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID


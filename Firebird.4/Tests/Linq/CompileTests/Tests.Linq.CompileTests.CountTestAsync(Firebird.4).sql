﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID


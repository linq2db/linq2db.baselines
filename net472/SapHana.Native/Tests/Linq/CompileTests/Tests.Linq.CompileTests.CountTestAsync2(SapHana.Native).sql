﻿BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = :"ParentID"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = :"ParentID"


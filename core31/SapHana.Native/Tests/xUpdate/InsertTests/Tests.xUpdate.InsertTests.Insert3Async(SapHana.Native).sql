﻿BeforeExecute
-- SapHana.Native SapHana (asynchronously)

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @id_1  -- Int32
SET     @id_1 = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	:"id_1"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11

BeforeExecute
-- SapHana.Native SapHana (asynchronously)
DECLARE @id  -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = :"id"

BeforeExecute
-- SapHana.Native SapHana (asynchronously)

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000


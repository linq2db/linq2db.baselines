﻿BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	1
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	1
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" > 1000

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" > 1000


﻿BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 1000
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	:"Value1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 1001
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:"ParentID",
	:"Value1"
)

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	("t1"."ParentID" = 1000 AND "t1"."Value1" IS NULL OR "t1"."ParentID" = 1001 AND "t1"."Value1" IS NULL)

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000


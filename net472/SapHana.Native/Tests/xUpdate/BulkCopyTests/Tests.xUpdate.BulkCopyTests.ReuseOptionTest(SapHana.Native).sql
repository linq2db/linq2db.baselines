﻿BeforeExecute
-- SapHana.Native SapHana
DECLARE @ParentID  -- Int32
SET     @ParentID = 111001
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
SET     @ParentID = 111001
DECLARE @ChildID  -- Int32
SET     @ChildID = 0

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:"ParentID",
	:"ChildID"
)


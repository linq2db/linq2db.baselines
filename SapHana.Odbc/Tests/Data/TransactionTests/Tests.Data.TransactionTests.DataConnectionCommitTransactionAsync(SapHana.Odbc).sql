﻿BeforeExecute
BeginTransactionAsync
BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1010

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	?,
	?
)

BeforeExecute
CommitTransactionAsync
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = 1010


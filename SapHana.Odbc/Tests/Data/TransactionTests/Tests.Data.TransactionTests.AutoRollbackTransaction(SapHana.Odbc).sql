﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1010
DECLARE @Value1  -- Int32
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
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 1012

UPDATE
	"Parent" "t"
SET
	"Value1" = ?
WHERE
	"t"."ParentID" = 1010

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010
LIMIT 1


﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1010

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	CAST(@ParentID AS Int),
	CAST(@Value1 AS Int)
)

BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Parent" "t"
SET
	"Value1" = 1012
WHERE
	"t"."ParentID" = 1010

BeforeExecute
DisposeTransactionAsync
BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010
FETCH FIRST 1 ROWS ONLY


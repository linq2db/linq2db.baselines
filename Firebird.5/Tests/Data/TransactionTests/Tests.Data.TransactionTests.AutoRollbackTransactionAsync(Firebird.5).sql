﻿BeforeExecute
--  Firebird.5 Firebird4 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1010

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
BeginTransaction
BeforeExecute
--  Firebird.5 Firebird4

UPDATE
	"Parent" "t"
SET
	"Value1" = 1012
WHERE
	"t"."ParentID" = 1010

BeforeExecute
DisposeTransactionAsync
BeforeExecute
--  Firebird.5 Firebird4 (asynchronously)

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010
FETCH NEXT 1 ROWS ONLY


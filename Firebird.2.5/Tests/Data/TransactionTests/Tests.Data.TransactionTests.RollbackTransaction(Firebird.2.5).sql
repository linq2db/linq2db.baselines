﻿BeforeExecute
-- Firebird.2.5 Firebird
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
	CAST(@ParentID AS Int),
	CAST(@Value1 AS Int)
)

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"Parent" "t"
SET
	"Value1" = 1012
WHERE
	"t"."ParentID" = 1010

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010


﻿BeforeExecute
-- Firebird4 Firebird
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
-- Firebird4 Firebird

UPDATE
	"Parent"
SET
	"Parent"."Value1" = 1011
WHERE
	"Parent"."ParentID" = 1010

BeforeExecute
CommitTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	"t"."ParentID" = 1010

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1000


﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

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
-- Firebird.2.5 Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	"Parent"
SET
	"Parent"."Value1" = @Value1
WHERE
	"Parent"."ParentID" = @ParentID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT FIRST @take
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @ParentID


﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

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
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1001


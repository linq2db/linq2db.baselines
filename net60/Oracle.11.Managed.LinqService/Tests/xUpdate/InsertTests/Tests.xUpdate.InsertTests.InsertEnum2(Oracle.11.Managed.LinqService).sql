﻿BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000


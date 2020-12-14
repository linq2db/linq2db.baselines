﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1001

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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value1 Int32
SET     @Value1 = 1002
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	"Parent"
SET
	"Parent"."Value1" = :Value1
WHERE
	"Parent"."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @take Int32
SET     @take = 2

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000


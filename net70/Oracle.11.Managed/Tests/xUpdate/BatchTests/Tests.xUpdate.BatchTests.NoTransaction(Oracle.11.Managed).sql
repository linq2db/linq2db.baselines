﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (1111,1111)
	INTO "Parent" ("ParentID", "Value1") VALUES (2111,2111)
	INTO "Parent" ("ParentID", "Value1") VALUES (3111,3111)
	INTO "Parent" ("ParentID", "Value1") VALUES (4111,4111)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = :ParentID


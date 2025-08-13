BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" IN (1001, 1002)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000


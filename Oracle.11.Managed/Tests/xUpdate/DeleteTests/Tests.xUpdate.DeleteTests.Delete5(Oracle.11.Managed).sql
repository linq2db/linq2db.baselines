-- Oracle.11.Managed Oracle11
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.11.Managed Oracle11
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.11.Managed Oracle11
DECLARE @values_0 Int32
SET     @values_0 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:values_0,
	1
)

-- Oracle.11.Managed Oracle11
DECLARE @values_0 Int32
SET     @values_0 = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:values_0,
	1
)

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.11.Managed Oracle11
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" IN (1001, 1002)

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000


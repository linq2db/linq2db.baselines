-- Oracle.21.Managed Oracle.Managed Oracle12
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.21.Managed Oracle.Managed Oracle12
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

-- Oracle.21.Managed Oracle.Managed Oracle12
DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" IN (1001, 1002)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000


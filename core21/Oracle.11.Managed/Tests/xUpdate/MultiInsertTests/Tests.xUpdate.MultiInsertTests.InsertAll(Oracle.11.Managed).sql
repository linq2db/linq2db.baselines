BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
WHEN N > 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"SmallIntValue"
	)
	VALUES
	(
		ID + 1,
		N
	)
WHEN N < 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"SmallIntValue"
	)
	VALUES
	(
		ID + 2,
		N
	)
WHEN 1 = 1 THEN
	INTO "Child"
	(
		"ParentID",
		"ChildID"
	)
	VALUES
	(
		ID + 1,
		ID + 3
	)
SELECT
	42 as N,
	1000 as ID
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"Child" x
WHERE
	x."ChildID" = 1003

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID = 1001

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000


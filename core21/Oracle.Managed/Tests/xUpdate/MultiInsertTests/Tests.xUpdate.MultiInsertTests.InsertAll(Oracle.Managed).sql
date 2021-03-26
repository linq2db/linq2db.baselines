BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
WHEN N > 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"GuidValue"
	)
	VALUES
	(
		ID + 1,
		Sys_Guid()
	)
WHEN N < 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"GuidValue"
	)
	VALUES
	(
		ID + 2,
		Sys_Guid()
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
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 1000

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Child" x
WHERE
	x."ChildID" = 1003

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1.ID > 1000

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000


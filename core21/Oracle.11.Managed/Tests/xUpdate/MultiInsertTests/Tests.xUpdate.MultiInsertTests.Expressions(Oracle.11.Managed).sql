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
WHEN N < 0 THEN
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
WHEN N > 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"GuidValue"
	)
	VALUES
	(
		3002,
		Sys_Guid()
	)
SELECT
	42 as N,
	3000 as ID
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 3000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 4000

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
WHEN 1 = 1 THEN
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
WHEN N > 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"GuidValue"
	)
	VALUES
	(
		4002,
		Sys_Guid()
	)
SELECT
	4000 as ID,
	42 as N
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 4000

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


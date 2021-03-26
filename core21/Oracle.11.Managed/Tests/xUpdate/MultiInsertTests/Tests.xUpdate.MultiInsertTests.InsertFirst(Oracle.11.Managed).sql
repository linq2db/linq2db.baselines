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

INSERT FIRST
WHEN N < 40 THEN
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
WHEN 1 = 0 THEN
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
ELSE
	INTO "LinqDataTypes"
	(
		ID,
		"GuidValue"
	)
	VALUES
	(
		ID + 3,
		Sys_Guid()
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


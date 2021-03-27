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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

INSERT FIRST
WHEN N < 40 THEN
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
WHEN 1 = 0 THEN
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
ELSE
	INTO "LinqDataTypes"
	(
		ID,
		"SmallIntValue"
	)
	VALUES
	(
		ID + 3,
		N
	)
SELECT
	42 as N,
	1000 as ID
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID = 1003

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


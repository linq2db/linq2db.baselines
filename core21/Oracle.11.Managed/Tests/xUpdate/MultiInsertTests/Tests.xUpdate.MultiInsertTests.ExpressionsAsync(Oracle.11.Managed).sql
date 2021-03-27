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

INSERT ALL
WHEN N < 0 THEN
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
WHEN N > 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"SmallIntValue"
	)
	VALUES
	(
		3002,
		N
	)
SELECT
	42 as N,
	3000 as ID
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 3000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

INSERT ALL
WHEN 1 = 1 THEN
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
WHEN N > 40 THEN
	INTO "LinqDataTypes"
	(
		ID,
		"SmallIntValue"
	)
	VALUES
	(
		4002,
		N
	)
SELECT
	4000 as ID,
	42 as N
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

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


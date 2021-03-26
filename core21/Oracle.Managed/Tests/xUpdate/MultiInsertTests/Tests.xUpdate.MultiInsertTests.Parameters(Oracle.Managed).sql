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
DECLARE @newId2 Int32
SET     @newId2 = 3002
DECLARE @id Int32
SET     @id = 3000

INSERT ALL
WHEN 1 = 0 THEN
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
		:newId2,
		Sys_Guid()
	)
SELECT
	:id as ID,
	42 as N
FROM SYS.DUAL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 3000

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 4000

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
DECLARE @newId2 Int32
SET     @newId2 = 4002
DECLARE @id Int32
SET     @id = 4000

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
		:newId2,
		Sys_Guid()
	)
SELECT
	:id as ID,
	42 as N
FROM SYS.DUAL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"LinqDataTypes" x
WHERE
	x.ID > 4000

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


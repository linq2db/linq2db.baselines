BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
WHEN N > 40 THEN
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		ID + 1,
		N
	)
WHEN N < 40 THEN
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		ID + 2,
		N
	)
WHEN 1 = 1 THEN
	INTO "Dest2"
	(
		ID,
		"Int"
	)
	VALUES
	(
		ID + 3,
		ID + 1
	)
SELECT
	42 as N,
	1000 as ID
FROM SYS.DUAL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" x
WHERE
	x.ID = 1001

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest2" x
WHERE
	x.ID = 1003


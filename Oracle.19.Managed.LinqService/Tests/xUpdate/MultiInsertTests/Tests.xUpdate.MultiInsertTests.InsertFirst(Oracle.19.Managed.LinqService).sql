BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT FIRST
WHEN N < 40 THEN
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
WHEN 1 = 0 THEN
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
ELSE
	INTO "Dest1"
	(
		ID,
		"Value"
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
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Dest1" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Dest1" x
WHERE
	x.ID = 1003


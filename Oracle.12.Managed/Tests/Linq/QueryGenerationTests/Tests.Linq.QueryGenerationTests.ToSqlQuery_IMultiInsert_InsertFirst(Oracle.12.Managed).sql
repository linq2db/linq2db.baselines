-- Oracle.12.Managed Oracle.Managed Oracle12

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

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" x
WHERE
	x.ID = 1003


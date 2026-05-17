-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
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
	1000 as ID,
	42 as N
FROM SYS.DUAL

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest2" x
WHERE
	x.ID = 1003


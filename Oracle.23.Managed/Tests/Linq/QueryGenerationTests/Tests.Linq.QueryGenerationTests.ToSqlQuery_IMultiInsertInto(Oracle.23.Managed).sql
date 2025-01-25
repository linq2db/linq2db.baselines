BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		"source_ID" + 1,
		"source_N"
	)
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		"source_ID" + 2,
		"source_N"
	)
	INTO "Dest2"
	(
		ID,
		"Int"
	)
	VALUES
	(
		"source_ID" + 3,
		"source_ID" + 1
	)
SELECT
	1000 as "source_ID",
	42 as "source_N"
FROM SYS.DUAL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest2" x
WHERE
	x.ID = 1003


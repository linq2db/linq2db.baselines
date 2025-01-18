BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
WHEN "source_N" < 0 THEN
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
WHEN "source_N" > 40 THEN
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		3002,
		"source_N"
	)
SELECT
	42 as "source_N",
	3000 as "source_ID"
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
	"Dest1" x
WHERE
	x.ID = 3002

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
WHEN 1 = 1 THEN
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
WHEN "source_N" > 40 THEN
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		4002,
		"source_N"
	)
SELECT
	4000 as "source_ID",
	42 as "source_N"
FROM SYS.DUAL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" x
WHERE
	x.ID = 4001 OR x.ID = 4002


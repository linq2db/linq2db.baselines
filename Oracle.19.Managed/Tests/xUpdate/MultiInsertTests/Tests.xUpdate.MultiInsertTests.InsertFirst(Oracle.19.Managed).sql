BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT FIRST
WHEN "source_N" < 40 THEN
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
WHEN 1 = 0 THEN
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
ELSE
	INTO "Dest1"
	(
		ID,
		"Value"
	)
	VALUES
	(
		"source_ID" + 3,
		"source_N"
	)
SELECT
	42 as "source_N",
	1000 as "source_ID"
FROM SYS.DUAL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Dest1" x
WHERE
	x.ID = 1003


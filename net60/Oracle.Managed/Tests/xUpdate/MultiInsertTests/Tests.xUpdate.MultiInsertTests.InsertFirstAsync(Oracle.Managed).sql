﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Dest1"
(
	ID            Int          NOT NULL,
	"Value"       SmallInt         NULL,
	"StringValue" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.Managed Oracle12 (asynchronously)

SELECT
	Count(*)
FROM
	"Dest1" t1

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

SELECT
	Count(*)
FROM
	"Dest1" x
WHERE
	x.ID = 1003

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


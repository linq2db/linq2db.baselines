﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Ints"
		(
			"One"   Int NOT NULL,
			"Two"   Int NOT NULL,
			"Three" Int NOT NULL,
			"Four"  Int NOT NULL,
			"Five"  Int NOT NULL,
			"Nil"   Int     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Ints" ("One", "Two", "Three", "Four", "Five", "Nil") VALUES (1,2,3,4,5,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(TO_TIMESTAMP('2020-10-01', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2020-10-05', 'YYYY-MM-DD HH24:MI:SS')) OVERLAPS (TO_TIMESTAMP('2020-10-03', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2020-11-09', 'YYYY-MM-DD HH24:MI:SS'))

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p TimeStampTZ -- DateTimeOffset
SET     @p = 10/05/2020 00:00:00 +02:00
DECLARE @p_1 TimeStampTZ -- DateTimeOffset
SET     @p_1 = 10/01/2020 00:00:00 +02:00
DECLARE @p_2 TimeStampTZ -- DateTimeOffset
SET     @p_2 = 10/03/2020 00:00:00 +02:00
DECLARE @p_3 TimeStampTZ -- DateTimeOffset
SET     @p_3 = 11/09/2020 00:00:00 +01:00

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, :p_3)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 6.00:00:00
DECLARE @p_1 IntervalDS -- Object
SET     @p_1 = 1.00:00:00

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(TO_TIMESTAMP('2020-10-03', 'YYYY-MM-DD HH24:MI:SS'), :p) OVERLAPS (TO_TIMESTAMP('2020-10-05', 'YYYY-MM-DD HH24:MI:SS'), :p_1)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 6.00:00:00

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(TO_TIMESTAMP('2020-10-03', 'YYYY-MM-DD HH24:MI:SS'), :p) OVERLAPS (TO_TIMESTAMP('2020-10-05', 'YYYY-MM-DD HH24:MI:SS'), NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


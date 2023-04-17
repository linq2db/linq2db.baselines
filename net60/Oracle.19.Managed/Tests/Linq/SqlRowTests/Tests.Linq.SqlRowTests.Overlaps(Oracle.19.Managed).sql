BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Ints" ("One", "Two", "Three", "Four", "Five", "Nil") VALUES (1,2,3,4,5,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = TIMESTAMP '2020-10-01 00:00:00.000000'
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-05 00:00:00.000000'
DECLARE @p_3 TimeStamp -- DateTime
SET     @p_3 = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_4 TimeStamp -- DateTime
SET     @p_4 = TIMESTAMP '2020-11-09 00:00:00.000000'

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p_1, :p_2) OVERLAPS (:p_3, :p_4)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p_1 TimeStampTZ -- DateTimeOffset
SET     @p_1 = 10/05/2020 00:00:00 +02:00
DECLARE @p_2 TimeStampTZ -- DateTimeOffset
SET     @p_2 = 10/01/2020 00:00:00 +02:00
DECLARE @p_3 TimeStampTZ -- DateTimeOffset
SET     @p_3 = 10/03/2020 00:00:00 +02:00
DECLARE @p_4 TimeStampTZ -- DateTimeOffset
SET     @p_4 = 11/09/2020 00:00:00 +01:00

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p_1, :p_2) OVERLAPS (:p_3, :p_4)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_2 IntervalDS -- Object
SET     @p_2 = 6.00:00:00
DECLARE @p_3 TimeStamp -- DateTime
SET     @p_3 = TIMESTAMP '2020-10-05 00:00:00.000000'
DECLARE @p_4 IntervalDS -- Object
SET     @p_4 = 1.00:00:00

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p_1, :p_2) OVERLAPS (:p_3, :p_4)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_2 IntervalDS -- Object
SET     @p_2 = 6.00:00:00
DECLARE @p_3 TimeStamp -- DateTime
SET     @p_3 = TIMESTAMP '2020-10-05 00:00:00.000000'

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p_1, :p_2) OVERLAPS (:p_3, NULL)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


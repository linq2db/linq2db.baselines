BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @One Int32
SET     @One = 1
DECLARE @Two Int32
SET     @Two = 2
DECLARE @Three Int32
SET     @Three = 3
DECLARE @Four Int32
SET     @Four = 4
DECLARE @Five Int32
SET     @Five = 5
DECLARE @Nil Int32
SET     @Nil = NULL

INSERT INTO "Ints"
(
	"One",
	"Two",
	"Three",
	"Four",
	"Five",
	"Nil"
)
VALUES
(
	:One,
	:Two,
	:Three,
	:Four,
	:Five,
	:Nil
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-10-01 00:00:00.000000'
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = TIMESTAMP '2020-10-05 00:00:00.000000'
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_3 TimeStamp -- DateTime
SET     @p_3 = TIMESTAMP '2020-11-09 00:00:00.000000'

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, :p_3)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_1 IntervalDS -- Object
SET     @p_1 = 6.00:00:00
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-05 00:00:00.000000'
DECLARE @p_3 IntervalDS -- Object
SET     @p_3 = 1.00:00:00

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, :p_3)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_1 IntervalDS -- Object
SET     @p_1 = 6.00:00:00
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-05 00:00:00.000000'

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, NULL)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


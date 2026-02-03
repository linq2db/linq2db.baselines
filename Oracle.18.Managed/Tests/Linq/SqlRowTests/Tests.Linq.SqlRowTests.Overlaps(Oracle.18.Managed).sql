-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-10-01 00:00:00.000000'
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = TIMESTAMP '2020-10-05 00:00:00.000000'
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_3 TimeStamp -- DateTime
SET     @p_3 = TIMESTAMP '2020-11-09 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, :p_3)

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
	COUNT(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, :p_3)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_1 IntervalDS -- Object
SET     @p_1 = 6.00:00:00
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-05 00:00:00.000000'
DECLARE @p_3 IntervalDS -- Object
SET     @p_3 = 1.00:00:00

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, :p_3)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-10-03 00:00:00.000000'
DECLARE @p_1 IntervalDS -- Object
SET     @p_1 = 6.00:00:00
DECLARE @p_2 TimeStamp -- DateTime
SET     @p_2 = TIMESTAMP '2020-10-05 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(:p, :p_1) OVERLAPS (:p_2, NULL)


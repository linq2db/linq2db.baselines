BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
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
	COUNT(*)
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
	COUNT(*)
FROM
	"Ints" i
WHERE
	(TO_TIMESTAMP('2020-10-03', 'YYYY-MM-DD HH24:MI:SS'), :p) OVERLAPS (TO_TIMESTAMP('2020-10-05', 'YYYY-MM-DD HH24:MI:SS'), :p_1)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 6.00:00:00

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(TO_TIMESTAMP('2020-10-03', 'YYYY-MM-DD HH24:MI:SS'), :p) OVERLAPS (TO_TIMESTAMP('2020-10-05', 'YYYY-MM-DD HH24:MI:SS'), NULL)


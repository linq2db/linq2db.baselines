-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

UPDATE
	"MeasuredPeriodRow" r
SET
	"Elapsed" = CAST(CAST(Floor(Extract(Day From (:asOf - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D
WHERE
	r."Id" = 1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."ClosedOn",
	t1."Elapsed"
FROM
	"MeasuredPeriodRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

SELECT
	r."Id"
FROM
	"MeasuredPeriodRow" r
WHERE
	r."Elapsed" < CAST(CAST(Floor(Extract(Day From (:asOf - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

UPDATE
	"MeasuredPeriodRow" r
SET
	"Elapsed" = CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - :asOf))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - :asOf))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - :asOf))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - :asOf)) * 10000000D)) AS Number(19)) AS Float) / 36000000000D
WHERE
	r."Id" = 1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."ClosedOn",
	t1."Elapsed"
FROM
	"MeasuredPeriodRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

SELECT
	r."Id"
FROM
	"MeasuredPeriodRow" r
WHERE
	r."Elapsed" < CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - :asOf))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - :asOf))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - :asOf))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - :asOf)) * 10000000D)) AS Number(19)) AS Float) / 864000000000D


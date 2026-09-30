-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (:asOf - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - :asOf))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - :asOf))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - :asOf))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - :asOf)) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 0D

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	CAST(CAST(Floor(Extract(Day From (:asOf - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 600000000D

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.000000'

SELECT
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - :asOf))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - :asOf))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - :asOf))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - :asOf)) * 10000000D)) AS Number(19)) AS Float) / 36000000000D as "c1"
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY


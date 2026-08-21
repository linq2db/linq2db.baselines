-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InDays Int64
SET     @InDays = 2
DECLARE @InMilliseconds Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds Int64
SET     @InNanoseconds = 7000123400

INSERT INTO "UnitSpreadRow"
(
	"Id",
	"InDays",
	"InMilliseconds",
	"InNanoseconds"
)
VALUES
(
	:Id,
	:InDays,
	:InMilliseconds,
	:InNanoseconds
)

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."InDays",
	t1."InMilliseconds",
	t1."InNanoseconds"
FROM
	"UnitSpreadRow" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."InDays" * 24 AS Float) as "DayHours",
	CAST(MOD(Trunc(r."InMilliseconds" / 1000), 60) AS Int) as "MillisecondSecond"
FROM
	"UnitSpreadRow" r
FETCH NEXT 2 ROWS ONLY


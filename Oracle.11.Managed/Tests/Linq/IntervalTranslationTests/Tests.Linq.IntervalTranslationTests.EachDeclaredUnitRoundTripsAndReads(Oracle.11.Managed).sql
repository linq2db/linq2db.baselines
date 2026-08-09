-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."InDays",
	t1."InMilliseconds",
	t1."InNanoseconds"
FROM
	"UnitSpreadRow" t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(r."InDays" AS Number(19)) * 864000000000 AS Float) / 36000000000D,
	CAST(MOD(Trunc((CAST(r."InMilliseconds" AS Number(19)) * 10000) / 10000000), 60) AS Int)
FROM
	"UnitSpreadRow" r
WHERE
	ROWNUM <= 2


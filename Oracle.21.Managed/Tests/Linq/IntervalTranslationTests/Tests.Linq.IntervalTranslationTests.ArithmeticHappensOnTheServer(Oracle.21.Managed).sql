-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 183845
DECLARE @InTicks Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 183845

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(r."InSeconds" AS Number(19)) * 10000000 AS Float) / 36000000000D as "TotalHours",
	CAST(MOD(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 36000000000), 24) AS Int) as "Hours",
	CAST(CAST(r."InTicks" AS Number(19)) AS Float) / 600000000D as "TotalMinutes"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY


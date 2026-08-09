-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 864000000000) AS Int) as "Days",
	CAST(MOD(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 36000000000), 24) AS Int) as "Hours",
	CAST(MOD(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 600000000), 60) AS Int) as "Minutes",
	CAST(MOD(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 10000000), 60) AS Int) as "Seconds"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY


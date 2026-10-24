-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."InSeconds" AS Float) / 3600D as "TotalHours",
	CAST(MOD(Trunc(r."InSeconds" / 3600), 24) AS Int) as "Hours",
	CAST(r."InTicks" AS Float) / 600000000D as "TotalMinutes"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY


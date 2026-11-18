-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = -90000
DECLARE @InTicks Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = -90000

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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(Trunc(r."InSeconds" / 86400) AS Int) as "Days",
	CAST(MOD(Trunc(r."InSeconds" / 3600), 24) AS Int) as "Hours",
	CAST(r."InSeconds" AS Float) / 3600D as "TotalHours"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY


-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	CAST(Trunc(r."InSeconds" / 86400) AS Int),
	CAST(MOD(Trunc(r."InSeconds" / 3600), 24) AS Int),
	CAST(MOD(Trunc(r."InSeconds" / 60), 60) AS Int),
	CAST(MOD(r."InSeconds", 60) AS Int)
FROM
	"DurationRow" r
WHERE
	ROWNUM <= 2


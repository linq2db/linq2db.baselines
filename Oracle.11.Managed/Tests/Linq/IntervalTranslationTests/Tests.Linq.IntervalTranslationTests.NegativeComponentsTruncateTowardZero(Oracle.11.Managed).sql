-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	CAST(Trunc(r."InSeconds" / 86400) AS Int),
	CAST(MOD(Trunc(r."InSeconds" / 3600), 24) AS Int),
	CAST(r."InSeconds" AS Float) / 3600D
FROM
	"DurationRow" r
WHERE
	ROWNUM <= 2


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
	CAST(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 864000000000) AS Int),
	CAST(MOD(Trunc((CAST(r."InSeconds" AS Number(19)) * 10000000) / 36000000000), 24) AS Int),
	CAST(CAST(r."InSeconds" AS Number(19)) * 10000000 AS Float) / 36000000000D
FROM
	"DurationRow" r
WHERE
	ROWNUM <= 2


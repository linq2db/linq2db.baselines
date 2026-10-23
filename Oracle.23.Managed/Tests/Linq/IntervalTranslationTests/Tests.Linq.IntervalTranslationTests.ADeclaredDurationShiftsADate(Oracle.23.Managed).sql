-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 5400
DECLARE @InTicks Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 5400

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
	CAST(TIMESTAMP '2026-03-01 00:00:00.000000' AS timestamp(7)) + NumToDSInterval(Trunc((r."InSeconds" * 10000000) / 864000000000), 'DAY') + NumToDSInterval(MOD(r."InSeconds" * 10000000, 864000000000) / 10000000, 'SECOND') as "AddedSeconds",
	CAST(TIMESTAMP '2026-03-01 00:00:00.000000' AS timestamp(7)) + NumToDSInterval(Trunc(((r."InSeconds" * 10000000) * -1) / 864000000000), 'DAY') + NumToDSInterval(MOD((r."InSeconds" * 10000000) * -1, 864000000000) / 10000000, 'SECOND') as "SubtractedSeconds",
	CAST(TIMESTAMP '2026-03-01 00:00:00.000000' AS timestamp(7)) + NumToDSInterval(Trunc(r."InTicks" / 864000000000), 'DAY') + NumToDSInterval(MOD(r."InTicks", 864000000000) / 10000000, 'SECOND') as "AddedTicks"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY


-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	TIMESTAMP '2026-03-01 00:00:00.000000' + NumToDSInterval(Trunc((r."InSeconds" * 10000000) / 864000000000), 'DAY') + NumToDSInterval(MOD(r."InSeconds" * 10000000, 864000000000) / 10000000, 'SECOND') > TIMESTAMP '2026-03-01 01:00:00.000000'


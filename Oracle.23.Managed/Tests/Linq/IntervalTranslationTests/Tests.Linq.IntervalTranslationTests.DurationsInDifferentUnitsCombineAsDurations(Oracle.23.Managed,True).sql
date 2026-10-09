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
	r."InSeconds" + r."InSeconds" as "SameSeconds",
	r."InTicks" + r."InTicks" as "SameTicks",
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) as "MixedAdd",
	CAST(r."InSeconds" * 10000000 - r."InTicks" AS Number(19)) as "MixedSub",
	CAST(r."InTicks" - r."InSeconds" * 10000000 AS Number(19)) as "MixedSubRev",
	CAST(CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) + r."InSeconds" * 10000000 AS Number(19)) as "Nested",
	CAST(CAST(-r."InSeconds" AS Number(19)) * 10000000 + r."InTicks" AS Number(19)) as "Negated",
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) as "Conditional",
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) + r."InTicks" + r."InTicks" as "BothComputed",
	CAST(CAST(r."InSeconds" + r."InSeconds" AS Number(19)) * 10000000 + r."InTicks" AS Number(19)) - (r."InTicks" + r."InTicks") as "BothComputedSub",
	CAST(CAST(-r."InSeconds" AS Number(19)) * 10000000 - r."InTicks" AS Number(19)) as "NegatedSub"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) as "c1"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY


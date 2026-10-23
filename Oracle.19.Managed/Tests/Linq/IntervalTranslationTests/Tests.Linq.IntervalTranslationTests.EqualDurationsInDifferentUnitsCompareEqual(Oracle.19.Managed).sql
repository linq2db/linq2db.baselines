-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InSeconds" * 10000000 = r."InTicks"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InSeconds" * 10000000 > r."InTicks"


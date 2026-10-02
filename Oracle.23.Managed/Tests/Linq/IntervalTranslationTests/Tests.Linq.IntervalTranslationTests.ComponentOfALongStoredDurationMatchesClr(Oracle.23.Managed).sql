-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 3000000005

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
	CAST(Trunc(r."InSeconds" / 86400) AS Int) as "Days",
	CAST(MOD(Trunc(r."InSeconds" / 3600), 24) AS Int) as "Hours",
	CAST(MOD(Trunc(r."InSeconds" / 60), 60) AS Int) as "Minutes",
	CAST(MOD(r."InSeconds", 60) AS Int) as "Seconds"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Seconds Int32
SET     @Seconds = 5

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(MOD(r."InSeconds", 60) AS Int) = :Seconds


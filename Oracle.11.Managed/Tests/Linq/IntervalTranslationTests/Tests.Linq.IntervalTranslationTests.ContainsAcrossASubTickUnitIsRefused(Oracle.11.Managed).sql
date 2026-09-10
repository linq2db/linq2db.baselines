-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InDays Int64
SET     @InDays = 0
DECLARE @InMilliseconds Int64
SET     @InMilliseconds = 7000
DECLARE @InNanoseconds Int64
SET     @InNanoseconds = 7000000000

INSERT INTO "UnitSpreadRow"
(
	"Id",
	"InDays",
	"InMilliseconds",
	"InNanoseconds"
)
VALUES
(
	:Id,
	:InDays,
	:InMilliseconds,
	:InNanoseconds
)

-- Oracle.11.Managed Oracle11
SELECT
	r."InNanoseconds"
FROM
	"UnitSpreadRow" r
WHERE
	ROWNUM <= 2


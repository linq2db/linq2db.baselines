-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."InNanoseconds"
FROM
	"UnitSpreadRow" r
FETCH NEXT 2 ROWS ONLY


-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 7000
DECLARE @InNanoseconds BigInt -- Int64
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
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- Firebird.5 Firebird4
SELECT
	"r"."InNanoseconds"
FROM
	"UnitSpreadRow" "r"
FETCH NEXT 2 ROWS ONLY


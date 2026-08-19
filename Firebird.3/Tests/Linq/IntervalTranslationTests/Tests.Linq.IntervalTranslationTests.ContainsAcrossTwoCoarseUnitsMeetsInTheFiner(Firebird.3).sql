-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds BigInt -- Int64
SET     @InNanoseconds = 172800000000000

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

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"UnitSpreadRow" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UnitSpreadRow" "x"
		WHERE
			"r"."InDays" * 86400000 = "x"."InMilliseconds"
	)

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"UnitSpreadRow" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UnitSpreadRow" "x"
		WHERE
			"r"."InMilliseconds" = "x"."InDays" * 86400000
	)


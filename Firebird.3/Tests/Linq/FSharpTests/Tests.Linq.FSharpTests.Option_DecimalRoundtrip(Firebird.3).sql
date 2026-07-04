-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Decimal(4, 2)
SET     @Value = 12.34

INSERT INTO "OptionDecimalTable"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Decimal
SET     @Value = NULL

INSERT INTO "OptionDecimalTable"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionDecimalTable" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionDecimalTable" "r"
WHERE
	"r"."Id" = 2
FETCH NEXT 2 ROWS ONLY


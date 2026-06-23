-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 42

INSERT INTO "OptionNullableElemTable"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO "OptionNullableElemTable"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"r"."Id",
	"r"."Value"
FROM
	"OptionNullableElemTable" "r"
WHERE
	"r"."Id" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"r"."Id",
	"r"."Value"
FROM
	"OptionNullableElemTable" "r"
WHERE
	"r"."Id" = 2


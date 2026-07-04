-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionNullableElemTable" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"OptionNullableElemTable" "r"
WHERE
	"r"."Id" = 2
FETCH NEXT 2 ROWS ONLY


-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 42
DECLARE @StrValue VarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO "Issue4646Table"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @StrValue VarChar -- String
SET     @StrValue = NULL

INSERT INTO "Issue4646Table"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"r"."Id",
	"r"."IntValue",
	"r"."StrValue"
FROM
	"Issue4646Table" "r"
WHERE
	"r"."Id" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"r"."Id",
	"r"."IntValue",
	"r"."StrValue"
FROM
	"Issue4646Table" "r"
WHERE
	"r"."Id" = 2


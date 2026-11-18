-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	"r"."IntValue",
	"r"."StrValue"
FROM
	"Issue4646Table" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	"r"."IntValue",
	"r"."StrValue"
FROM
	"Issue4646Table" "r"
WHERE
	"r"."Id" = 2
FETCH NEXT 2 ROWS ONLY


-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 42
DECLARE @StrValue Varchar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO "Issue4646Table"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	:Id,
	:IntValue,
	:StrValue
)

-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @StrValue Varchar -- String
SET     @StrValue = NULL

INSERT INTO "Issue4646Table"
(
	"Id",
	"IntValue",
	"StrValue"
)
VALUES
(
	:Id,
	:IntValue,
	:StrValue
)

-- PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"Issue4646Table" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"Issue4646Table" r
WHERE
	r."Id" = 2
LIMIT 2


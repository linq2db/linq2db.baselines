-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 42
DECLARE @StrValue Text(5) -- String
SET     @StrValue = 'hello'

INSERT INTO "VOptionTable"
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntValue Integer -- Int32
SET     @IntValue = NULL
DECLARE @StrValue Text -- String
SET     @StrValue = NULL

INSERT INTO "VOptionTable"
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"VOptionTable" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	r."IntValue",
	r."StrValue"
FROM
	"VOptionTable" r
WHERE
	r."Id" = 2
LIMIT 2


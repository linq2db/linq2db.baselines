-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(4) -- String
SET     @Text = 'AAbb'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text Text(4) -- String
SET     @Text = 'XXaa'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	REGEXP_REPLACE(t1."Text", 'aa', '', 'ig')
FROM
	"InfeedAdvicePositionDTO" t1
ORDER BY
	t1."Id"


-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(6) -- String
SET     @Text = 'ab12cd'

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text Text(10) -- String
SET     @Text = 'AA11bb22cc'

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	REGEXP_REPLACE(t1."Text", '[0-9]+', '', 'g')
FROM
	"InfeedAdvicePositionDTO" t1
ORDER BY
	t1."Id"


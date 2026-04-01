-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(4) -- String
SET     @Text = 'abcd'

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
DECLARE @Text Text(6) -- String
SET     @Text = 'AAbbcc'

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
	infeed."Id",
	infeed."Text"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(REGEXP_LIKE(infeed."Text", 'aa.*', 'i'))
LIMIT 2


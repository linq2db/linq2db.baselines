-- PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text Text(6) -- String
SET     @Text = 'aabbcc'

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

-- PostgreSQL.15 PostgreSQL

SELECT
	infeed."Id",
	infeed."Text"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	REGEXP_LIKE(infeed."Text", 'aa.*')
LIMIT 2


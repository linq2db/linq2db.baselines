-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(3) -- String
SET     @Text = 'a
b'

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

-- PostgreSQL.18 PostgreSQL

SELECT
	REGEXP_REPLACE(t1."Text", '.', 'x', 'sg')
FROM
	"InfeedAdvicePositionDTO" t1
LIMIT 2

-- PostgreSQL.18 PostgreSQL

SELECT
	REGEXP_REPLACE(t1."Text", '.', 'x', 'isg')
FROM
	"InfeedAdvicePositionDTO" t1
LIMIT 2


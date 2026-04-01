-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(10) -- String
SET     @Text = 'aa11aa22aa'

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
	REGEXP_REPLACE(t1."Text", 'aa', 'X', 3, 1, 'ig')
FROM
	"InfeedAdvicePositionDTO" t1
LIMIT 2


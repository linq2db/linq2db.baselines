BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				group_1."Value"
			FROM
				"TakeSkipClass" group_1
			GROUP BY
				group_1."Value"
			HAVING
				COUNT(*) > 1
			LIMIT 1
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


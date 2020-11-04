BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE IF NOT EXISTS "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
-- PostgreSQL.9.2 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"TakeSkipClass" t1
		GROUP BY
			t1."Value"
		HAVING
			Count(*) > 1
		LIMIT 1
	)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


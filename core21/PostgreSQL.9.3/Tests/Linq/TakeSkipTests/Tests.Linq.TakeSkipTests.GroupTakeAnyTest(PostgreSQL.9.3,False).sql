BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE IF NOT EXISTS "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				t1."Value"
			FROM
				"TakeSkipClass" t1
			GROUP BY
				t1."Value"
			HAVING
				Count(*) > 1
			LIMIT 1
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TakeSkipClass"
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
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TakeSkipClass"


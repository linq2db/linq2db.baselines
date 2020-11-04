BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

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
		LIMIT :take
	)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


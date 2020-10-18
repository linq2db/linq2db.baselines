BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE "TakeSkipClass"


BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TakeSkipClass"
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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT DISTINCT
	t1."Value"
FROM
	"TakeSkipClass" t1
LIMIT 3

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TakeSkipClass"


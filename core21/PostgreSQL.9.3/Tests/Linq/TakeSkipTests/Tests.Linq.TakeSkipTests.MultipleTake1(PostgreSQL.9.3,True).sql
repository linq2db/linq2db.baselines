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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 2

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
LIMIT :take_1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


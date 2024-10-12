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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT DISTINCT
	t1."Value"
FROM
	"TakeSkipClass" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


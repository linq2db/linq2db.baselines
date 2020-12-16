BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.9.5 PostgreSQL
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 3

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip_2 

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 4

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip_2 

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "TakeSkipClass"


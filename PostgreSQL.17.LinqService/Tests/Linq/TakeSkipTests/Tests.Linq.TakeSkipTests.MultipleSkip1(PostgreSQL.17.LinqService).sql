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
DECLARE @Value Varchar(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Varchar(5) -- String
SET     @Value = 'PIPPO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Varchar(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Varchar(5) -- String
SET     @Value = 'BOLTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip 

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


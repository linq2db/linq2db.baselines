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

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET 3 

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Value"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET 4 

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


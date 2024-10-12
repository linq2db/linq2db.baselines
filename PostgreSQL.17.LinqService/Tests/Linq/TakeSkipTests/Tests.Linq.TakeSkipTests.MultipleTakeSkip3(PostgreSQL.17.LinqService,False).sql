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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value1'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value2'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value3'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value4'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value5'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value6'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value7'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value8'

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
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Value9'

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
LIMIT 1 OFFSET 3 

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


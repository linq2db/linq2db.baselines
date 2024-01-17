BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				t1."Value"
			FROM
				"TakeSkipClass" t1
			GROUP BY
				t1."Value"
			HAVING
				Count(*) > 1
			LIMIT 1
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TakeSkipClass"


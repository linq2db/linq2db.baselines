BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NullableBoolClass"
(
	"Value" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(NULL),
(True),
(False)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = True

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value AND t."Value" IS NOT NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"


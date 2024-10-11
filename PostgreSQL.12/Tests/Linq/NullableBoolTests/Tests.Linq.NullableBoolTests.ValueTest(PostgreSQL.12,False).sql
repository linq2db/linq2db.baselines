BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NullableBoolClass"
(
	"Value" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(NULL),
(True),
(False)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @value Boolean
SET     @value = False

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"


BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NullableBoolClass"
(
	"Value" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(NULL),
(True),
(False)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"


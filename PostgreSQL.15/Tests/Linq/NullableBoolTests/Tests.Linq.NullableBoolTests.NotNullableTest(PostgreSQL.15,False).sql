BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullableBoolClass"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NotNullableBoolClass"
(
	"Value" Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(True),
(False)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = True

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = False

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	NOT t."Value"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = False

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = True

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullableBoolClass"


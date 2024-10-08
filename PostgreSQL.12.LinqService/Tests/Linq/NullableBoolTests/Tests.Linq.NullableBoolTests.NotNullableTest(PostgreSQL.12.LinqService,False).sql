BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NotNullableBoolClass"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NotNullableBoolClass"
(
	"Value" Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Boolean
SET     @Value = True

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Boolean
SET     @Value = False

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = True

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = False

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	NOT t."Value"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = False

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = True

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NotNullableBoolClass"


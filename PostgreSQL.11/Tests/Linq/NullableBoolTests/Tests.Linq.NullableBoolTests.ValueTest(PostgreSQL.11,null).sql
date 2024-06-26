﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NullableBoolClass"
(
	"Value" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(NULL),
(True),
(False)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	1 = 0

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBoolClass"


﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "WhereCases"
(
	"Id"                Int     NOT NULL,
	"BoolValue"         Boolean NOT NULL,
	"NullableBoolValue" Boolean     NULL,

	CONSTRAINT "PK_WhereCases" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(1,True,NULL),
(2,True,True),
(3,True,NULL),
(4,True,True),
(5,True,True),
(11,False,NULL),
(12,False,False),
(13,False,NULL),
(14,False,False),
(15,False,False)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."BoolValue",
	t1."NullableBoolValue"
FROM
	"WhereCases" t1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = True AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = False OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = True AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = False OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	((t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	((t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" IS NOT NULL OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" IS NULL OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" IS NULL OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."NullableBoolValue" IS NOT NULL OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND (t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = False AND (t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND (t."NullableBoolValue" = False AND t."NullableBoolValue" IS NOT NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR (t."NullableBoolValue" = True OR t."NullableBoolValue" IS NULL) OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = True OR (t."NullableBoolValue" = True OR t."NullableBoolValue" IS NULL)) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	(t."BoolValue" = False AND (t."NullableBoolValue" = False AND t."NullableBoolValue" IS NOT NULL) OR t."Id" <= 0)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "WhereCases"


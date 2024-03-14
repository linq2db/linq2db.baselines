BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereCases"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereCases"
(
	"Id"                Int     NOT NULL,
	"BoolValue"         Boolean NOT NULL,
	"NullableBoolValue" Boolean     NULL,

	CONSTRAINT "PK_WhereCases" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = True

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = True

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = True

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = False

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = False

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @BoolValue Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Boolean
SET     @NullableBoolValue = False

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	:Id,
	:BoolValue,
	:NullableBoolValue
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."BoolValue",
	t1."NullableBoolValue"
FROM
	"WhereCases" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = True AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = True AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = True AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = True AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT ((t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" = True AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" = True AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" = True AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NOT NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."NullableBoolValue" IS NULL AND t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."NullableBoolValue" IS NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND (t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL) AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND (t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL)) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (NOT (t."BoolValue" = False AND (t."NullableBoolValue" = False OR t."NullableBoolValue" IS NULL)) AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	t."BoolValue" = False AND t."NullableBoolValue" = False AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND t."NullableBoolValue" = False AND t."NullableBoolValue" IS NOT NULL AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (t."BoolValue" = False AND t."NullableBoolValue" = False AND t."NullableBoolValue" IS NOT NULL) AND
	t."Id" > 0

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id",
	t."BoolValue",
	t."NullableBoolValue"
FROM
	"WhereCases" t
WHERE
	NOT (NOT (t."BoolValue" = False AND t."NullableBoolValue" = False AND t."NullableBoolValue" IS NOT NULL) AND t."Id" > 0)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereCases"


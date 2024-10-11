BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3830TestTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3830TestTable"
(
	"Id"    Int     NOT NULL,
	"Bool1" Char(1) NOT NULL,
	"Bool2" Char(1)     NULL,
	"Bool3" Char(1)     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(1,'Y',NULL,NULL),
(2,'N',NULL,'Y'),
(3,'N','Y',NULL),
(4,'Y','N','Y')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" IS NULL AND r."Bool3" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :true_value AND r."Bool2" IS NULL AND r."Bool3" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	(r."Bool3" IS NULL OR r."Bool3" IS NULL) AND r."Bool1" = :Bool1 AND
	r."Bool2" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = :Bool1 AND r."Bool3" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" IS NULL AND r."Bool3" = :Bool3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = :true_value AND r."Bool1" = :Bool1 AND
	r."Bool2" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @false_value Char(1) -- String
SET     @false_value = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :false_value AND r."Bool2" IS NULL AND
	r."Bool3" = :Bool3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = :Bool1 AND r."Bool3" = :Bool3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" = :Bool2 AND r."Bool3" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @false_value Char(1) -- String
SET     @false_value = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :false_value AND r."Bool2" = :Bool2 AND
	r."Bool3" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	(r."Bool3" IS NULL OR r."Bool3" IS NULL) AND r."Bool1" = :Bool1 AND
	r."Bool2" = :Bool2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'N'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = :Bool1 AND r."Bool3" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" = :Bool2 AND r."Bool3" = :Bool3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :true_value AND r."Bool2" = :Bool2 AND
	r."Bool3" = :Bool3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @true_value Char(1) -- String
SET     @true_value = 'Y'
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- String
SET     @Bool2 = 'N'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = :true_value AND r."Bool1" = :Bool1 AND
	r."Bool2" = :Bool2

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Bool1 Char(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool3 Char(1) -- String
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = :Bool1 AND r."Bool3" = :Bool3

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3830TestTable"


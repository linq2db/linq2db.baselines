BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InfeedAdvicePositionDTO"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "InfeedAdvicePositionDTO"
(
	"Id" uuid NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Uuid -- Guid
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'::uuid

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	Upper(Cast(infeed."Id" as VarChar(36)))
FROM
	"InfeedAdvicePositionDTO" infeed
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Upper(Cast(infeed."Id" as VarChar(36))) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Upper(Cast(infeed."Id" as VarChar(36))) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Upper(Cast(infeed."Id" as VarChar(36))) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Lower(Upper(Cast(infeed."Id" as VarChar(36)))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InfeedAdvicePositionDTO"


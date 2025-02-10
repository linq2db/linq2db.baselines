BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(Cast(infeed."Id" as VarChar(36)))
FROM
	"InfeedAdvicePositionDTO" infeed
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(Cast(infeed."Id" as VarChar(36))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(Cast(infeed."Id" as VarChar(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(Cast(infeed."Id" as VarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Lower((Cast(infeed."Id" as VarChar(36)))) LIKE '293ae%' ESCAPE '~'


﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "CreateTableTestClass"
(
	"TimeOffset" TimeStampTZ NOT NULL,
	"Guid"       uuid        NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @TimeOffset TimestampTz -- DateTimeOffset
SET     @TimeOffset = '2017-06-17T19:40:33.0000000+00:00'
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "CreateTableTestClass"
(
	"TimeOffset",
	"Guid"
)
VALUES
(
	:TimeOffset,
	:Guid
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Guid Uuid -- Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."TimeOffset",
	t1."Guid"
FROM
	"CreateTableTestClass" t1
WHERE
	t1."Guid" = :Guid
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "CreateTableTestClass"


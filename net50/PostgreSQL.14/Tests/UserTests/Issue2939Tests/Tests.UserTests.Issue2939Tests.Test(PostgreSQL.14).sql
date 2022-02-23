﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Adsl"
(
	"Id"       Int NOT NULL,
	"IdClient" Int     NULL,

	CONSTRAINT "PK_Adsl" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Client"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Client" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	adsl_1."Id"
FROM
	"Adsl" adsl_1
		INNER JOIN "Client" client_1 ON adsl_1."IdClient" = client_1."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Client"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Adsl"


BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MessageEventDTO"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "MessageEventDTO"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_MessageEventDTO" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MessageEventDTOTb2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "MessageEventDTOTb2"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_MessageEventDTOTb2" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "MessageEventDTOTb2"
(
	"Id"
)
SELECT
	x."Id"
FROM
	"MessageEventDTO" x

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MessageEventDTOTb2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MessageEventDTO"


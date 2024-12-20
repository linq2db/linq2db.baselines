BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "Issue4333Table"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_Issue4333Table" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue4333Table"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4333Table"


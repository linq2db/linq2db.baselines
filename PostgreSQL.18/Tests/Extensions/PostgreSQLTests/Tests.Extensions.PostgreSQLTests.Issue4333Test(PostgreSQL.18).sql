BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "Issue4333Table"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_Issue4333Table" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "Issue4333Table"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "Issue4333Table"


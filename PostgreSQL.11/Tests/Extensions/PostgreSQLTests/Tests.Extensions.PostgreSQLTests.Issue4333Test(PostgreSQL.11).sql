-- PostgreSQL.11 PostgreSQL
CREATE TEMPORARY TABLE "Issue4333Table"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_Issue4333Table" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.11 PostgreSQL
INSERT INTO "Issue4333Table"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "Issue4333Table"


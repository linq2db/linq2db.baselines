-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TEMPORARY TABLE "Issue4333Table"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_Issue4333Table" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

INSERT INTO "Issue4333Table"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "Issue4333Table"


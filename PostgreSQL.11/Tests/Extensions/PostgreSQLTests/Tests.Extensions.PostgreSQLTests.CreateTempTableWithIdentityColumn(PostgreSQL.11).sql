-- PostgreSQL.11 PostgreSQL
CREATE TEMPORARY TABLE "IdentityTempRecord"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_IdentityTempRecord" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.11 PostgreSQL
INSERT INTO "IdentityTempRecord"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "IdentityTempRecord"


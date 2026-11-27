-- PostgreSQL.9.2 PostgreSQL
CREATE TEMPORARY TABLE "IdentityTempRecord"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_IdentityTempRecord" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "IdentityTempRecord"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "IdentityTempRecord"


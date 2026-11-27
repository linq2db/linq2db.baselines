-- PostgreSQL.12 PostgreSQL12
CREATE TEMPORARY TABLE "IdentityTempRecord"
(
	"Id"   SERIAL  NOT NULL,
	"Name" text        NULL,

	CONSTRAINT "PK_IdentityTempRecord" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.12 PostgreSQL12
INSERT INTO "IdentityTempRecord"
(
	"Name"
)
VALUES
('Bar'),
('Baz')

-- PostgreSQL.12 PostgreSQL12
DROP TABLE IF EXISTS "IdentityTempRecord"


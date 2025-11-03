-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "WithIdentity"
(
	"Id"   integer  NOT NULL,
	"Name" text     NOT NULL,

	CONSTRAINT "PK_WithIdentity" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "NoIdentity"
(
	"Id"   uuid NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_NoIdentity" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"



-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "WithIdentity"




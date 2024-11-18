--  PostgreSQL.9.3 PostgreSQL

CREATE TEMPORARY TABLE "NoIdentity"
(
	"Id"   uuid NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_NoIdentity" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



--  PostgreSQL.9.3 PostgreSQL

INSERT INTO "NoIdentity"
(
	"Id",
	"Name"
)
VALUES
('b184c4a8-2c26-4a9e-b528-de7082149b3b'::uuid,'John Doe'),
('6df6c6cd-e7f9-48d6-9305-36c313ab2e11'::uuid,'Jane Doe')



--  PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



--  PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




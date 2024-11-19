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
('0ccb2794-022e-4689-a1cc-fb5f5dfc0507'::uuid,'John Doe'),
('756da097-1263-4e66-bcb6-9d31c0595d63'::uuid,'Jane Doe')



--  PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



--  PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




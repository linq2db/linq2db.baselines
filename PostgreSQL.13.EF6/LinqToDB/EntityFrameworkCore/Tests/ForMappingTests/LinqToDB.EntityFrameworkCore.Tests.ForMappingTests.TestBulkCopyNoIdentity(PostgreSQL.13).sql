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
('bb77d839-9aa6-4aa2-a590-5a3f8fdee34b'::uuid,'John Doe'),
('39310256-ee89-433c-96f9-682e0ebf3f2a'::uuid,'Jane Doe')



--  PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



--  PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




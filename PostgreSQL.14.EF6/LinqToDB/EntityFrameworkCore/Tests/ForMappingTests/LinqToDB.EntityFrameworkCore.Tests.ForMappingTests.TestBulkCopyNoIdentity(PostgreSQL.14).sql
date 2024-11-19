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
('3d00faf4-fed8-4a58-9685-379e7dd01c5f'::uuid,'John Doe'),
('8d3f8fe3-52b8-42bb-9595-74f61f71c53d'::uuid,'Jane Doe')



--  PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



--  PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




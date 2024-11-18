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
('a72f8f34-8d36-4c93-b9e9-d6db18ded1f6'::uuid,'John Doe'),
('9a73ff40-23cd-4ee5-975e-e4a42a793fd9'::uuid,'Jane Doe')



--  PostgreSQL.9.3 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



--  PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




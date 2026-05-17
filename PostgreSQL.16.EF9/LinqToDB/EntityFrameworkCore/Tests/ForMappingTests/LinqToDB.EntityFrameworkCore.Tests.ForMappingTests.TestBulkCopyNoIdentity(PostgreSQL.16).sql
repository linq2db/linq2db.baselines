-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "NoIdentity"
(
	"Id"   uuid NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_NoIdentity" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



-- PostgreSQL.15 PostgreSQL

INSERT INTO "NoIdentity"
(
	"Id",
	"Name"
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,'John Doe'),
('a948600d-de21-4f74-8ac2-9516b287076e'::uuid,'Jane Doe')



-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




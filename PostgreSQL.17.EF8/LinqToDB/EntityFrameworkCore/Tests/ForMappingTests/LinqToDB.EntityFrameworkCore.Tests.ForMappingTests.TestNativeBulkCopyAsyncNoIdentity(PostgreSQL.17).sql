﻿-- PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "NoIdentity"
(
	"Id"   uuid NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_NoIdentity" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS



INSERT ASYNC BULK "NoIdentity"(Id, Name)



-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"NoIdentity" t1



-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NoIdentity"




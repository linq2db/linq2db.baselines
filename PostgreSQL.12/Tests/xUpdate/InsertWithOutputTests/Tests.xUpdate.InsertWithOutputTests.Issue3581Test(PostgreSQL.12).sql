﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3581Table"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3581Table"
(
	"Id"         Int  NOT NULL,
	"Name"       text     NULL,
	"ExternalId" text     NULL,
	"Source"     text     NULL,

	CONSTRAINT "PK_Issue3581Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(8) -- String
SET     @Name = 'John Doe'
DECLARE @Id_1 Text(1) -- String
SET     @Id_1 = '1'
DECLARE @Source Text(7) -- String
SET     @Source = 'unknown'

INSERT INTO "Issue3581Table"
(
	"Id",
	"Name",
	"ExternalId",
	"Source"
)
VALUES
(
	:Id,
	:Name,
	:Id_1,
	:Source
)
RETURNING
	"Issue3581Table"."Id",
	"Issue3581Table"."Name",
	"Issue3581Table"."ExternalId",
	"Issue3581Table"."Source"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3581Table"


﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithString"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereWithString"
(
	"Id"          Int  NOT NULL,
	"StringValue" text     NULL,

	CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringValue Text(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(
	:Id,
	:StringValue
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithString"


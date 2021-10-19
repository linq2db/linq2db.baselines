﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithString"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereWithString"
(
	"Id"          Int  NOT NULL,
	"StringValue" text     NULL,

	CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(1,'Str1')

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @filterValue Integer -- Int32
SET     @filterValue = 2

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."Id" = :filterValue

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithString"


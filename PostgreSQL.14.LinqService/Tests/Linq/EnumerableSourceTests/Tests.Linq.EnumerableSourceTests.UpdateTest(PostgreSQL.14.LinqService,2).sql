﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableToInsert"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Text(5) -- String
SET     @Value = 'Janet'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Text(3) -- String
SET     @Value = 'Doe'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TableToInsert"
SET
	"Value" = r."Value"
FROM
	(VALUES
		(3,'Janet Updated'), (4,'Doe Updated')
	) r("Id", "Value")
WHERE
	"TableToInsert"."Id" = r."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TableToInsert" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableToInsert"


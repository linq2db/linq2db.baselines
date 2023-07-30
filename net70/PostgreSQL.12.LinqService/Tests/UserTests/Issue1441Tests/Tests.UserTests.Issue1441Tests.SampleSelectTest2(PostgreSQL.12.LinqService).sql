﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Authors"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Authors"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(100) NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Books"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Books"
(
	"Id"       Int          NOT NULL,
	"AuthorId" Int          NOT NULL,
	"Title"    VarChar(100) NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	author."Id",
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Books"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Authors"


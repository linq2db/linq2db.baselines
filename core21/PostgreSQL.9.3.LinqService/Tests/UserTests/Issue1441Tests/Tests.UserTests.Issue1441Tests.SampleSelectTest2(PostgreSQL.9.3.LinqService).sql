BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Authors"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(100) NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Books"
(
	"Id"       Int          NOT NULL,
	"AuthorId" Int          NOT NULL,
	"Title"    VarChar(100) NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	author."Id", 
	author."Name"
FROM
	"Authors" author
		INNER JOIN "Books" book ON book."AuthorId" = author."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Books"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Authors"


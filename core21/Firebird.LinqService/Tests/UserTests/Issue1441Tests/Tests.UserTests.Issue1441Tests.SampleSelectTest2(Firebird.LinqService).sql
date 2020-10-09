BeforeExecute
-- Firebird

CREATE TABLE "Authors"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE TABLE "Books"
(
	"Id"       Int                                    NOT NULL,
	"AuthorId" Int                                    NOT NULL,
	"Title"    VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

SELECT 
	"author"."Id", 
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

BeforeExecute
-- Firebird

DROP TABLE "Books"

BeforeExecute
-- Firebird

DROP TABLE "Authors"


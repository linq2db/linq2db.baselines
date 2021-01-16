BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Authors"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Books"
(
	"Id"       Int                                    NOT NULL,
	"AuthorId" Int                                    NOT NULL,
	"Title"    VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Books"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Authors"


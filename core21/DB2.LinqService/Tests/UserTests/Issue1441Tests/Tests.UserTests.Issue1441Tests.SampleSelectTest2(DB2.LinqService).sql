BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Authors"
(
	"Id"   Int           NOT NULL,
	"Name" NVarChar(100) NOT NULL,

	CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Books"
(
	"Id"       Int           NOT NULL,
	"AuthorId" Int           NOT NULL,
	"Title"    NVarChar(100) NOT NULL,

	CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"author"."Id", 
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Books"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Authors"


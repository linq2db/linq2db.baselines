BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Authors"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(100) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Books"
(
	"Id"       Integer       NOT NULL,
	"AuthorId" Integer       NOT NULL,
	"Title"    NVarChar(100) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"author"."Id",
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Books"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Authors"


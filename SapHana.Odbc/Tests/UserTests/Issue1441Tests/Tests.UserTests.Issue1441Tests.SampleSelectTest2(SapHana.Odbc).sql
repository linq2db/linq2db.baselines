﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Authors"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Authors"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(100) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Books"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Books"
(
	"Id"       Integer       NOT NULL,
	"AuthorId" Integer       NOT NULL,
	"Title"    NVarChar(100) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"author"."Id",
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Books"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Authors"


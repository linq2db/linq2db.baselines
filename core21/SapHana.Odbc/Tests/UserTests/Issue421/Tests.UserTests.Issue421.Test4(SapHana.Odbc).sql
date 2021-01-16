BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "BlobClass"
(
	"Id"        Integer        NOT NULL,
	"BlobValue" VarBinary(100)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	1,
	x'010203'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BlobClass"


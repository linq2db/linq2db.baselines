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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BlobValue Binary(3)
SET     @BlobValue = x'010203'

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @BlobValue Binary(3)
SET     @BlobValue = x'030201'

UPDATE
	"BlobClass"
SET
	"BlobClass"."BlobValue" = ?
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BlobClass"


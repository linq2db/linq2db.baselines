﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BlobClass"

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
DECLARE @BlobValue Binary(3)
SET     @BlobValue = x'030201'

UPDATE
	"BlobClass" "_"
SET
	"BlobValue" = ?
WHERE
	"_"."Id" = 1

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


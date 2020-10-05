BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "BlobClass"
(
	"Id"        Integer        NOT NULL,
	"BlobValue" VarBinary(100)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
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
	:"Id",
	:"BlobValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass" "_"
WHERE
	"_"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "BlobClass"


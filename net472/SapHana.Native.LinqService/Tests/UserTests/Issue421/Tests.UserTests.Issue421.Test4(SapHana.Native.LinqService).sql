BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "BlobClass40"
(
	"Id"        Integer        NOT NULL,
	"BlobValue" VarBinary(100)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "BlobClass40"
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
-- SapHana.Native SapHana

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass40" "_"
WHERE
	"_"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass40" "_"
WHERE
	"_"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "BlobClass40"


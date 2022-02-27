BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "BlobClass20"
(
	"Id"        Integer        NOT NULL,
	"BlobValue" VarBinary(100)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "BlobClass20"
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
	"BlobClass20" "_"
WHERE
	"_"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."Id",
	"_"."BlobValue"
FROM
	"BlobClass20" "_"
WHERE
	"_"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "BlobClass20"


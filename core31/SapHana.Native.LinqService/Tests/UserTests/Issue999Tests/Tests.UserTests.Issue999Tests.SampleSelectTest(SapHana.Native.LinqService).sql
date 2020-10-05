BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "User"
(
	"city"      NVarChar(255)     NULL,
	"user_name" NVarChar(255)     NULL,
	"street"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"u"."city"
FROM
	"User" "u"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"u"."street"
FROM
	"User" "u"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "User"


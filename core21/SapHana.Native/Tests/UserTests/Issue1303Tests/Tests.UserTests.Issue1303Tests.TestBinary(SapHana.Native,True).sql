BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1303"
(
	"ID"     Integer       NOT NULL,
	"Array"  VarBinary(10)     NULL,
	"Binary" VarBinary(10)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Array_1 Binary(3)
SET     @Array_1 = x'010203'
DECLARE @Binary_1 Binary(2)
SET     @Binary_1 = x'0405'

INSERT INTO "Issue1303"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	:"Array_1",
	:"Binary_1"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."ID" = 1
LIMIT 2

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Array" = x'010203'
LIMIT 2

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."ID",
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Binary" = x'0405'
LIMIT 2

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1303"


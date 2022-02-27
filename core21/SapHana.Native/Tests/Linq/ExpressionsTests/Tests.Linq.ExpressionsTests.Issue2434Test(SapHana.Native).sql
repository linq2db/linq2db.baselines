BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue2434Table"
(
	"Id"        Integer       NOT NULL,
	"FirstName" NVarChar(255)     NULL,
	"LastName"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName"
FROM
	"Issue2434Table" "t1"
ORDER BY
	"t1"."FirstName" || ' ' || "t1"."LastName"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue2434Table"


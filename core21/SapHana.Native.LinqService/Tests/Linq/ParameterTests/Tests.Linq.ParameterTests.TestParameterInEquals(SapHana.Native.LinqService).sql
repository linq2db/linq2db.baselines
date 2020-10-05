BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TestEqualsTable1"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TestEqualsTable2"
(
	"Id" Integer NOT NULL,
	"FK" Integer     NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."Id"
FROM
	"TestEqualsTable1" "_"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TestEqualsTable2" "__"
		WHERE
			"_"."Id" = "__"."FK" AND "__"."Id" IS NULL
	)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TestEqualsTable1"


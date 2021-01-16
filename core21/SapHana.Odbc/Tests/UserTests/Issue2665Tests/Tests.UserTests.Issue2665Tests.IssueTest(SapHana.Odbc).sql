BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ProductTable"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ProductAttributeTable"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ProductAttributeMapping"
(
	"ProductId"          Integer NOT NULL,
	"ProductAttributeId" Integer NOT NULL,

	PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"pa"."Id"
FROM
	"ProductAttributeMapping" "pam"
		INNER JOIN "ProductAttributeTable" "pa" ON "pam"."ProductAttributeId" = "pa"."Id"
WHERE
	EXISTS(
		SELECT
			"p"."Id"
		FROM
			"ProductTable" "p"
				INNER JOIN "ProductAttributeMapping" "pam_1" ON "p"."Id" = "pam_1"."ProductId"
		WHERE
			"p"."Id" >= "pam"."ProductId"
		GROUP BY
			"p"."Id"
		HAVING
			Count(*) = 1
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductTable"


BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ProductTable"

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

DROP TABLE "ProductAttributeTable"

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

DROP TABLE "ProductAttributeMapping"

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
			*
		FROM
			(
				SELECT
					"groupedProduct"."Id"
				FROM
					"ProductTable" "groupedProduct"
						INNER JOIN "ProductAttributeMapping" "pam_1" ON "groupedProduct"."Id" = "pam_1"."ProductId"
				GROUP BY
					"groupedProduct"."Id"
				HAVING
					COUNT(*) = 1
			) "p"
		WHERE
			"p"."Id" >= "pam"."ProductId"
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


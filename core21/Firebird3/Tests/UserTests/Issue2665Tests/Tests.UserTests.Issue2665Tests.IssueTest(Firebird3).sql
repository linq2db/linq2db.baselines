BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "ProductTable"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "ProductAttributeTable"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "ProductTable"


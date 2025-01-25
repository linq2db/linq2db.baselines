BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ProductTable"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductAttributeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductAttributeTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductAttributeTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ProductAttributeTable"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductAttributeMapping')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductAttributeMapping"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductAttributeMapping')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ProductAttributeMapping"
			(
				"ProductId"          Int NOT NULL,
				"ProductAttributeId" Int NOT NULL,

				CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductAttributeMapping')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductAttributeMapping"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductAttributeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductAttributeTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ProductTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ProductTable"';
END


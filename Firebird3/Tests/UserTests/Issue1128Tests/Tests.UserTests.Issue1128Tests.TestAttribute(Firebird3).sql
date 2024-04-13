﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AttributeBase')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AttributeBase"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AttributeBase')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AttributeBase"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_AttributeBase" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "AttributeBase"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AttributeBase')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AttributeBase"';
END


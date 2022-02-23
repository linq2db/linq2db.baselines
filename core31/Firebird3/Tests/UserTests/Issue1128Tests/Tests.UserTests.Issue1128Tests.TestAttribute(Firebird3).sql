BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "AttributeBase"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_AttributeBase" PRIMARY KEY ("Id")
)

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
	@Id
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AttributeBase')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AttributeBase"';
END


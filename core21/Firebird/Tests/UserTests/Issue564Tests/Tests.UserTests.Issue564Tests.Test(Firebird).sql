BeforeExecute
-- Firebird

CREATE TABLE "Parent564"
(
	"Id"          Int                                     NOT NULL,
	"Type"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"StringValue" VarChar(20) CHARACTER SET UNICODE_FSS,
	"IntValue"    Int,

	CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE GENERATOR "GIDENTITY_Parent564"

BeforeExecute
-- Firebird

CREATE TRIGGER "TIDENTITY_Parent564" FOR "Parent564"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."Id" = GEN_ID("GIDENTITY_Parent564", 1);
END

BeforeExecute
-- Firebird
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- Firebird
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Parent564" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Parent564"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Parent564"';
	EXECUTE STATEMENT 'DROP TABLE "Parent564"';
END


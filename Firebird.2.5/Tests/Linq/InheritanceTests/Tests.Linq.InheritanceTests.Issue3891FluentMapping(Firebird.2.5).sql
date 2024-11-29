BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Base2"
			(
				"Id"           Int                                    NOT NULL,
				"Type"         Int                                    NOT NULL,
				"Name_First"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name_Second"  VarChar(255) CHARACTER SET UNICODE_FSS,
				"Test_ChildId" Int                                    NOT NULL,

				CONSTRAINT "PK_Base2" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO "Base2"
(
	"Id",
	"Type",
	"Test_ChildId",
	"Name_First",
	"Name_Second"
)
VALUES
(
	@Id,
	@Type,
	@ChildId,
	@Name_First,
	@Name_Second
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base2" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second VarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"Base2" "t1"
SET
	"Type" = CAST(@Type AS Int),
	"Test_ChildId" = CAST(@ChildId AS Int),
	"Name_First" = CAST(@Name_First AS VARCHAR(6)),
	"Name_Second" = CAST(@Name_Second AS VARCHAR(6))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Type",
	"t1"."Id",
	"t1"."Test_ChildId",
	"t1"."Name_First",
	"t1"."Name_Second"
FROM
	"Base2" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Base2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Base2"';
END


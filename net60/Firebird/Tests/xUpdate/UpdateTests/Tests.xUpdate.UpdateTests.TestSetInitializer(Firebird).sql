BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdateSetTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdateSetTest"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdateSetTest')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UpdateSetTest"
			(
				"Id"     Int                           NOT NULL,
				"Value1" CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"Value2" Int                           NOT NULL,
				"Value3" Int                           NOT NULL,
				"Value4" CHAR(16) CHARACTER SET OCTETS,
				"Value5" Int,
				"Value6" Int,

				CONSTRAINT "PK_UpdateSetTest" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "UpdateSetTest"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5",
	"Value6"
)
SELECT 1,X'BD3973A543234DD89F4FDF9F93E2A627',10,6,NULL,NULL,NULL FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Guid6 Guid
SET     @Guid6 = X'66AA9DF9260F4A2BAC509CA8CE7AD725'
DECLARE @Value6 Integer -- Int32
SET     @Value6 = 8

UPDATE
	"UpdateSetTest"
SET
	"UpdateSetTest"."Value2" = 20,
	"UpdateSetTest"."Value5" = "UpdateSetTest"."Value2" * 5,
	"UpdateSetTest"."Value1" = @Guid6,
	"UpdateSetTest"."Value3" = 8,
	"UpdateSetTest"."Value6" = @Value6
WHERE
	"UpdateSetTest"."Id" = 1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."Id",
	"x"."Value1",
	"x"."Value2",
	"x"."Value3",
	"x"."Value4",
	"x"."Value5",
	"x"."Value6"
FROM
	"UpdateSetTest" "x"
WHERE
	"x"."Id" = 1

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UpdateSetTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UpdateSetTest"';
END


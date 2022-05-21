BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"     Int                                    NOT NULL,
				A        Int,
				B        Int,
				"EnumA"  NChar(1),
				"EnumB"  NChar(1),
				"CEnumA" VarChar(255) CHARACTER SET UNICODE_FSS,
				"CEnumB" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA Char -- String
SET     @EnumA = NULL
DECLARE @EnumB Char -- String
SET     @EnumB = NULL
DECLARE @CEnumA VarChar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar -- String
SET     @CEnumB = NULL

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA Char -- String
SET     @EnumA = NULL
DECLARE @EnumB Char(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 110
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA Char(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Char -- String
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar -- String
SET     @CEnumB = NULL

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 111
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA Char(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Char(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 112
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = 2
DECLARE @EnumA Char(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Char(1) -- String
SET     @EnumB = 'B'
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___Two___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 121
DECLARE @A Integer -- Int32
SET     @A = 2
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA Char(1) -- String
SET     @EnumA = 'B'
DECLARE @EnumB Char(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___Two___'
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"x"."Id"
FROM
	"Src" "x"
WHERE
	"x"."EnumA" >= "x"."EnumB"
ORDER BY
	"x"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END


BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithGuid')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithGuid"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithGuid')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithGuid"
			(
				"Default"  BINARY(16) NOT NULL,
				"Binary"   BINARY(16) NOT NULL,
				"String"   CHAR(38)   NOT NULL,
				"DefaultN" BINARY(16),
				"BinaryN"  BINARY(16),
				"StringN"  CHAR(38)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid1 Guid
SET     @Guid1 = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @Guid2 Guid
SET     @Guid2 = X'A948600DDE214F748AC29516B287076E'
DECLARE @Guid3 Char -- String
SET     @Guid3 = X'BD3973A543234DD89F4FDF9F93E2A627'
DECLARE @Guid4 Guid
SET     @Guid4 = X'76B1C87522874B82A23B7967C5EAFED8'
DECLARE @Guid5 Guid
SET     @Guid5 = X'656606A46E364431ADD685F886A1C7C2'
DECLARE @Guid6 Char -- String
SET     @Guid6 = X'66AA9DF9260F4A2BAC509CA8CE7AD725'

INSERT INTO "TableWithGuid"
(
	"Default",
	"Binary",
	"String",
	"DefaultN",
	"BinaryN",
	"StringN"
)
VALUES
(
	CAST(@Guid1 AS BINARY(16)),
	CAST(@Guid2 AS BINARY(16)),
	CAST(@Guid3 AS CHAR(38)),
	CAST(@Guid4 AS BINARY(16)),
	CAST(@Guid5 AS BINARY(16)),
	CAST(@Guid6 AS CHAR(8191))
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Default",
	"t1"."Binary",
	"t1"."String",
	"t1"."DefaultN",
	"t1"."BinaryN",
	"t1"."StringN"
FROM
	"TableWithGuid" "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid1 Guid
SET     @Guid1 = X'BC7B663D0FDE43278F925D8CC3A11D11'

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."Default" = @Guid1

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid2 Guid
SET     @Guid2 = X'A948600DDE214F748AC29516B287076E'

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."Binary" = @Guid2

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid3 Char -- String
SET     @Guid3 = X'BD3973A543234DD89F4FDF9F93E2A627'

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."String" = @Guid3

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid4 Guid
SET     @Guid4 = X'76B1C87522874B82A23B7967C5EAFED8'

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."DefaultN" = @Guid4

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid5 Guid
SET     @Guid5 = X'656606A46E364431ADD685F886A1C7C2'

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."BinaryN" = @Guid5

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Guid6 Char -- String
SET     @Guid6 = X'66AA9DF9260F4A2BAC509CA8CE7AD725'

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."StringN" = @Guid6

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithGuid')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithGuid"';
END


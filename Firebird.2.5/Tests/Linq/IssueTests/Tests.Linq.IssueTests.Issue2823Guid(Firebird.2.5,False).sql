-- Firebird.2.5 Firebird

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
	X'BC7B663D0FDE43278F925D8CC3A11D11',
	X'A948600DDE214F748AC29516B287076E',
	'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',
	X'76B1C87522874B82A23B7967C5EAFED8',
	X'656606A46E364431ADD685F886A1C7C2',
	'66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'
)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Default",
	"t1"."Binary",
	"t1"."String",
	"t1"."DefaultN",
	"t1"."BinaryN",
	"t1"."StringN"
FROM
	"TableWithGuid" "t1"

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."Default" = X'BC7B663D0FDE43278F925D8CC3A11D11'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."Binary" = X'A948600DDE214F748AC29516B287076E'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."String" = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."DefaultN" = X'76B1C87522874B82A23B7967C5EAFED8'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."BinaryN" = X'656606A46E364431ADD685F886A1C7C2'

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"TableWithGuid" "x"
WHERE
	"x"."StringN" = '66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'


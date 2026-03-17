-- Firebird.2.5 Firebird

SELECT FIRST 1
	Lower(UUID_TO_CHAR("t"."Id"))
FROM
	"TableWithGuid" "t"

-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%63d-0f%' ESCAPE '~'

-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH 'bc7b6'

-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%8f4-53%' ESCAPE '~'

-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH '8f4-53'


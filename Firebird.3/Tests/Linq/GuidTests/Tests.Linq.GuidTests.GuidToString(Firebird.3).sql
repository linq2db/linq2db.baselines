-- Firebird.3 Firebird3

SELECT
	Lower(UUID_TO_CHAR("t"."Id"))
FROM
	"TableWithGuid" "t"
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%63d-0f%' ESCAPE '~'

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH 'bc7b6'

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%8f4-53%' ESCAPE '~'

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH '8f4-53'


BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	Lower(UUID_TO_CHAR("t"."Id"))
FROM
	"TableWithGuid" "t"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH 'bc7b6'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH '8f4-53'


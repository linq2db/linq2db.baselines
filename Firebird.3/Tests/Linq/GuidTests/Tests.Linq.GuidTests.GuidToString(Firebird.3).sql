-- Firebird.3 Firebird3

SELECT
	CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS)
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
	CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS) LIKE '%63d-0f%' ESCAPE '~'

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS) STARTING WITH 'bc7b6'

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS) LIKE '%8f4-53%' ESCAPE '~'

-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS)) STARTING WITH '8f4-53'


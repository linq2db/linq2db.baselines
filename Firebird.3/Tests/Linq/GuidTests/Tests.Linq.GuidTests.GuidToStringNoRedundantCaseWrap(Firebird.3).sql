-- Firebird.3 Firebird3

SELECT
	CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS)
FROM
	"TableWithGuid" "t"

-- Firebird.3 Firebird3

SELECT
	"t"."Id"
FROM
	"TableWithGuid" "t"
WHERE
	CAST(Lower(UUID_TO_CHAR("t"."Id")) AS VarChar(36) CHARACTER SET UNICODE_FSS) = 'x'


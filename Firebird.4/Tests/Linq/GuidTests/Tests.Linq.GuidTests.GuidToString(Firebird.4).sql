﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Lower(UUID_TO_CHAR("t"."Id"))
FROM
	"TableWithGuid" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH 'bc7b6'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	"t"."NullableGuid"
FROM
	"TableWithGuid" "t"
WHERE
	Lower(UUID_TO_CHAR("t"."Id")) STARTING WITH '8f4-53'


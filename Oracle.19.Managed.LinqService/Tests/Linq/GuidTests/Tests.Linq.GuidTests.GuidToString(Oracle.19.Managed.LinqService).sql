﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) as "c1"
FROM
	"TableWithGuid" t
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE '%63d-0f%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Id",
	t."NullableGuid"
FROM
	"TableWithGuid" t
WHERE
	Lower(Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12))) LIKE '8f4-53%' ESCAPE '~'


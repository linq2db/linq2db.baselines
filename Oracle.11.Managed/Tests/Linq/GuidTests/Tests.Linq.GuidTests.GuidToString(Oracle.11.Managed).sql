BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Raw(16) -- Binary
SET     @Id = HEXTORAW('F4E73A190953EE4EA74627B28C7E30F3')

INSERT INTO "TableWithGuid"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12))
FROM
	"TableWithGuid" t
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) LIKE '293ae%' ESCAPE '~'


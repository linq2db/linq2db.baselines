-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12))
FROM
	"TableWithGuid" t

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id"
FROM
	"TableWithGuid" t
WHERE
	Lower(SUBSTR(RAWTOHEX(t."Id"), 7, 2) || SUBSTR(RAWTOHEX(t."Id"), 5, 2) || SUBSTR(RAWTOHEX(t."Id"), 3, 2) || SUBSTR(RAWTOHEX(t."Id"), 1, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 11, 2) || SUBSTR(RAWTOHEX(t."Id"), 9, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 15, 2) || SUBSTR(RAWTOHEX(t."Id"), 13, 2) || '-' || SUBSTR(RAWTOHEX(t."Id"), 17, 4) || '-' || SUBSTR(RAWTOHEX(t."Id"), 21, 12)) = 'x'


BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Raw(16) -- Binary
SET     @Id = HEXTORAW('F4E73A190953EE4EA74627B28C7E30F3')

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) as "c1"
FROM
	"InfeedAdvicePositionDTO" infeed
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Lower(lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12)))) LIKE '293ae%' ESCAPE '~'


BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12)))
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Lower(lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12)))) LIKE '293ae%' ESCAPE '~'


BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InfeedAdvicePositionDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "InfeedAdvicePositionDTO"
		(
			"Id" Raw(16) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	(substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))
FROM
	"InfeedAdvicePositionDTO" infeed
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12)) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12)) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	(substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12)) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	infeed."Id"
FROM
	"InfeedAdvicePositionDTO" infeed
WHERE
	Lower((substr(rawtohex(infeed."Id"), 7, 2) || substr(rawtohex(infeed."Id"), 5, 2) || substr(rawtohex(infeed."Id"), 3, 2) || substr(rawtohex(infeed."Id"), 1, 2) || '-' || substr(rawtohex(infeed."Id"), 11, 2) || substr(rawtohex(infeed."Id"), 9, 2) || '-' || substr(rawtohex(infeed."Id"), 15, 2) || substr(rawtohex(infeed."Id"), 13, 2) || '-' || substr(rawtohex(infeed."Id"), 17, 4) || '-' || substr(rawtohex(infeed."Id"), 21, 12))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InfeedAdvicePositionDTO"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


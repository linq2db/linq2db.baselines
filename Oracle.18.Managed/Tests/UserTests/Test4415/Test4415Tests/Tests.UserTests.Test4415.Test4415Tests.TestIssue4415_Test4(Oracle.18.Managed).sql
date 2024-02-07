BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Common_Language"
		(
			"LanguageID"            VarChar(255)     NULL,
			"Name"                  VarChar(255)     NULL,
			"AlternativeLanguageID" VarChar(255)     NULL,
			"Order"                 Int          NOT NULL,
			"IsoCode"               VarChar(255)     NULL,

			CONSTRAINT "PK_Common_Language" PRIMARY KEY ("LanguageID")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Common_Language" ("LanguageID", "Name", "AlternativeLanguageID", "Order", "IsoCode") VALUES ('de','deutsch',NULL,0,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Max(t1."LanguageID")
FROM
	"Common_Language" t1
GROUP BY
	t1."Name"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Common_Language"
		(
			"LanguageID" VarChar(255)     NULL,
			"Name"       VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Common_Language" ("LanguageID", "Name") VALUES ('de','deutsch')
	INTO "Common_Language" ("LanguageID", "Name") VALUES (NULL,'english')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	x."LanguageID" IN (
		SELECT
			t1.MAX_1
		FROM
			(
				SELECT
					MAX(x_1."LanguageID") as MAX_1
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


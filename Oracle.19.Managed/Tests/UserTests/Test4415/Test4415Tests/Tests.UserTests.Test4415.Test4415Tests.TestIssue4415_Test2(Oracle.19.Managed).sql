﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Common_Language"
		(
			"LanguageID" VarChar(255) NOT NULL,
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
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Common_Language" ("LanguageID", "Name") VALUES ('de','deutsch')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	x."LanguageID" IN (
		SELECT
			t1."Max_1"
		FROM
			(
				SELECT
					Max(x_1."LanguageID") as "Max_1"
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


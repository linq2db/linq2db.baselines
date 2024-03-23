BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @LanguageID Varchar2(2) -- String
SET     @LanguageID = 'de'
DECLARE @Name Varchar2(7) -- String
SET     @Name = 'deutsch'

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
(
	:LanguageID,
	:Name
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @LanguageID Varchar2 -- String
SET     @LanguageID = NULL
DECLARE @Name Varchar2(7) -- String
SET     @Name = 'english'

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
(
	:LanguageID,
	:Name
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."LanguageID",
	t1."Name"
FROM
	"Common_Language" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					Nvl(MAX(x_1."LanguageID"), '') || 'test' as "c1"
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
		WHERE
			(x."LanguageID" = t1."c1" OR x."LanguageID" IS NULL AND t1."c1" IS NULL)
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Language"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


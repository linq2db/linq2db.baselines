BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Stone"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Stone"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Stone"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Stone"
		(
			"Id"           Int           NOT NULL,
			"Name"         VarChar(255)  NOT NULL,
			"Enabled"      Char(1)           NULL,
			"ImageFullUrl" VarChar(255)      NULL,

			CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
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

CREATE SEQUENCE "SIDENTITY_Stone"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Stone"
BEFORE INSERT ON "Stone" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Stone".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl Varchar2(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl Varchar2(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl Varchar2(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Enabled",
	t1."ImageFullUrl"
FROM
	(
		SELECT
			sG."Name"
		FROM
			"Stone" sG
		WHERE
			sG."Enabled" = 1 AND sG."Name" NOT LIKE 'level - %' ESCAPE '~' AND
			Length(sG."ImageFullUrl") > 0
		GROUP BY
			sG."Name"
	) sG_1
		CROSS APPLY (
			SELECT
				s."Id",
				s."Name",
				s."Enabled",
				s."ImageFullUrl"
			FROM
				"Stone" s
			WHERE
				s."Enabled" = 1 AND
				s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
				Length(s."ImageFullUrl") > 0 AND
				sG_1."Name" = s."Name"
			FETCH NEXT 1 ROWS ONLY
		) t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Stone"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Stone"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Stone"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;


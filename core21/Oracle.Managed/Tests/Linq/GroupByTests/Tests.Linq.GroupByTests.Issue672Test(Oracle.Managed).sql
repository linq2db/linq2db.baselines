BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Stone"
(
	"Id"           Int           NOT NULL,
	"Name"         VarChar(255)  NOT NULL,
	"Enabled"      Char(1)           NULL,
	"ImageFullUrl" VarChar(255)      NULL,

	CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Stone"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Stone"
BEFORE INSERT ON "Stone" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Stone".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12

SELECT
	s."Name"
FROM
	"Stone" s
WHERE
	s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Enabled" = 1 AND
	s."Enabled" IS NOT NULL
GROUP BY
	s."Name"

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group1'

SELECT
	s."Id",
	s."Name",
	s."Enabled",
	s."ImageFullUrl"
FROM
	"Stone" s
WHERE
	s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Name" = :Name AND
	s."Enabled" = 1 AND
	s."Enabled" IS NOT NULL

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'group2'

SELECT
	s."Id",
	s."Name",
	s."Enabled",
	s."ImageFullUrl"
FROM
	"Stone" s
WHERE
	s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Name" = :Name AND
	s."Enabled" = 1 AND
	s."Enabled" IS NOT NULL

BeforeExecute
-- Oracle.Managed Oracle12

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


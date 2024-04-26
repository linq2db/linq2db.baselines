BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_xxPerson_ol"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_xxPerson_ol"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "xxPerson_ol"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "xxPerson_ol"
(
	"FirstName"  VarChar(255)  NOT NULL,
	"PersonID"   Int           NOT NULL,
	"LastName"   VarChar(255)  NOT NULL,
	"MiddleName" VarChar(255)      NULL,
	"Gender"     Char(1)       NOT NULL,

	CONSTRAINT "PK_xxPerson_ol" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_xxPerson_ol"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_xxPerson_ol"
BEFORE INSERT ON "xxPerson_ol" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_xxPerson_ol".NEXTVAL INTO :NEW."PersonID" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "xxPerson_ol"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"xxPerson_ol" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson_ol" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2(4) -- String
SET     @MiddleName = 'None'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	"xxPerson_ol" t1
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName,
	"Gender" = :Gender
WHERE
	t1."PersonID" = :ID

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson_ol" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_xxPerson_ol"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_xxPerson_ol"';
	EXECUTE IMMEDIATE 'DROP TABLE "xxPerson_ol"';
END;


﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_xxPerson_o"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_xxPerson_o"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "xxPerson_o"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

CREATE TABLE "xxPerson_o"
(
	"FirstName"  VarChar(255)  NOT NULL,
	"PersonID"   Int           NOT NULL,
	"LastName"   VarChar(255)  NOT NULL,
	"MiddleName" VarChar(255)      NULL,
	"Gender"     Char(1)       NOT NULL,

	CONSTRAINT "PK_xxPerson_o" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

CREATE SEQUENCE "SIDENTITY_xxPerson_o"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

CREATE OR REPLACE TRIGGER "TIDENTITY_xxPerson_o"
BEFORE INSERT ON "xxPerson_o" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_xxPerson_o".NEXTVAL INTO :NEW."PersonID" FROM dual;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "xxPerson_o"
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
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	Count(*)
FROM
	"xxPerson_o" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson_o" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
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
	"xxPerson_o"
SET
	"xxPerson_o"."FirstName" = :FirstName,
	"xxPerson_o"."LastName" = :LastName,
	"xxPerson_o"."MiddleName" = :MiddleName,
	"xxPerson_o"."Gender" = :Gender
WHERE
	"xxPerson_o"."PersonID" = :ID

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"xxPerson_o" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_xxPerson_o"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_xxPerson_o"';
	EXECUTE IMMEDIATE 'DROP TABLE "xxPerson_o"';
END;


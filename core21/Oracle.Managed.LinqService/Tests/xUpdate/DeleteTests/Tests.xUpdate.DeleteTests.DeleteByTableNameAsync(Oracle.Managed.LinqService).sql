BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_xxPerson_ol';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_xxPerson_ol';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE xxPerson_ol';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

CREATE TABLE xxPerson_ol
(
	FirstName  VarChar(255)  NOT NULL,
	PersonID   Int           NOT NULL,
	LastName   VarChar(255)  NOT NULL,
	MiddleName VarChar(255)      NULL,
	Gender     Char(1)       NOT NULL,

	CONSTRAINT PK_xxPerson_ol PRIMARY KEY (PersonID)
)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

CREATE SEQUENCE SIDENTITY_xxPerson_ol

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

CREATE OR REPLACE TRIGGER TIDENTITY_xxPerson_ol
BEFORE INSERT ON xxPerson_ol FOR EACH ROW
BEGIN
	SELECT SIDENTITY_xxPerson_ol.NEXTVAL INTO :NEW.PersonID FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO xxPerson_ol
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

SELECT 
	Count(*)
FROM
	xxPerson_ol t1

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.FirstName, 
	t1.PersonID, 
	t1.LastName, 
	t1.MiddleName, 
	t1.Gender
FROM
	xxPerson_ol t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @ID Int32
SET     @ID = 1

DELETE FROM
	xxPerson_ol t1
WHERE
	t1.PersonID = :ID

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

SELECT 
	Count(*)
FROM
	xxPerson_ol t1

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_xxPerson_ol';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_xxPerson_ol';
	EXECUTE IMMEDIATE 'DROP TABLE xxPerson_ol';
END;


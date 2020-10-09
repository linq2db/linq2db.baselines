BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE activity649
(
	activityid Int        NOT NULL,
	personid   Int        NOT NULL,
	added      timestamp  NOT NULL,

	CONSTRAINT PK_activity649 PRIMARY KEY (activityid)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE SIDENTITY_activity649

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER TIDENTITY_activity649
BEFORE INSERT ON activity649 FOR EACH ROW
BEGIN
	SELECT SIDENTITY_activity649.NEXTVAL INTO :NEW.activityid FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE person649
(
	personid   Int           NOT NULL,
	personname VarChar(255)  NOT NULL,

	CONSTRAINT PK_person649 PRIMARY KEY (personid)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE SIDENTITY_person649

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER TIDENTITY_person649
BEFORE INSERT ON person649 FOR EACH ROW
BEGIN
	SELECT SIDENTITY_person649.NEXTVAL INTO :NEW.personid FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @added TimeStamp -- DateTime
SET     @added = TO_TIMESTAMP('2017-01-01 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT 
	a_Person.personid, 
	a_Person.personname, 
	Max(f.added)
FROM
	activity649 f
		INNER JOIN person649 a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= :added
GROUP BY
	a_Person.personid,
	a_Person.personname

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_person649';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_person649';
	EXECUTE IMMEDIATE 'DROP TABLE person649';
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_activity649';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_activity649';
	EXECUTE IMMEDIATE 'DROP TABLE activity649';
END;


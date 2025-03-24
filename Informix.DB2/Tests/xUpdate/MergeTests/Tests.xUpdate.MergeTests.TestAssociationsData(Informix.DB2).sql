BeforeExecute
--  Informix.DB2 Informix

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender) VALUES (2147483647, '1', '2', '3', 'M')

BeforeExecute
--  Informix.DB2 Informix

DELETE FROM Person WHERE PersonID > 4

BeforeExecute
--  Informix.DB2 Informix

ALTER TABLE Person MODIFY (PersonID SERIAL(5))

BeforeExecute
--  Informix.DB2 Informix

ALTER TABLE Person ADD CONSTRAINT PRIMARY KEY (PersonID)

BeforeExecute
--  Informix.DB2 Informix

ALTER TABLE Patient ADD CONSTRAINT(FOREIGN KEY (PersonID) REFERENCES Person (PersonID))

BeforeExecute
--  Informix.DB2 Informix

ALTER TABLE Doctor ADD CONSTRAINT(FOREIGN KEY (PersonID) REFERENCES Person (PersonID))

BeforeExecute
BeginTransaction
BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.PersonID,
	t1.Diagnosis
FROM
	Patient t1
ORDER BY
	t1.PersonID

BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1
ORDER BY
	t1.PersonID

BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

BeforeExecute
DisposeTransaction

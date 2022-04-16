BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender) VALUES (2147483647, '1', '2', '3', 'M')

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM Person WHERE PersonID > 4

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Person MODIFY (PersonID SERIAL(5))

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Person ADD CONSTRAINT PRIMARY KEY (PersonID)

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Patient ADD CONSTRAINT(FOREIGN KEY (PersonID) REFERENCES Person (PersonID))

BeforeExecute
-- Informix.DB2 Informix

ALTER TABLE Doctor ADD CONSTRAINT(FOREIGN KEY (PersonID) REFERENCES Person (PersonID))

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName = 'John' AND Person.LastName = 'Shepard'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1


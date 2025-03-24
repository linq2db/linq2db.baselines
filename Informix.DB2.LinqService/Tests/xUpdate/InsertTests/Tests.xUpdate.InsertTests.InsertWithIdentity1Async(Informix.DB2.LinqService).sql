BeforeExecute
--  Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

BeforeExecute
--  Informix.DB2 Informix (asynchronously)

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
--  Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
--  Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4


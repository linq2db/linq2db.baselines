BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO Person
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @i Integer(4) -- Int32
SET     @i = 0
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 5

UPDATE
	Patient t1
SET
	Diagnosis = To_Char(CHAR_LENGTH(t1.Diagnosis || '.') - 1 + @i::Int)
WHERE
	t1.PersonID = @id2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

INSERT INTO Patient
(
	PersonID,
	Diagnosis
)
VALUES
(
	@id::Int,
	'abc'
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @i Integer(4) -- Int32
SET     @i = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 5

UPDATE
	Patient t1
SET
	Diagnosis = To_Char(CHAR_LENGTH(t1.Diagnosis || '.') - 1 + @i::Int)
WHERE
	t1.PersonID = @id2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @i Integer(4) -- Int32
SET     @i = 2
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 5

UPDATE
	Patient t1
SET
	Diagnosis = To_Char(CHAR_LENGTH(t1.Diagnosis || '.') - 1 + @i::Int)
WHERE
	t1.PersonID = @id2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT FIRST 2
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id


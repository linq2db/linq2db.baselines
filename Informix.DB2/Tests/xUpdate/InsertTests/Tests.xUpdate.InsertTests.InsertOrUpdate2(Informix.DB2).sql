-- Informix.DB2 Informix
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'subject'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'U'

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

-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	1
FROM
	Patient t1
WHERE
	t1.PersonID = @id::Int

-- Informix.DB2 Informix
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
	'negative'
)

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	1
FROM
	Patient t1
WHERE
	t1.PersonID = @id::Int

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id


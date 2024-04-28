BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1
WHERE
	t1.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1
WHERE
	t1.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1
WHERE
	t1.PersonID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1
WHERE
	t1.PersonID = @ID


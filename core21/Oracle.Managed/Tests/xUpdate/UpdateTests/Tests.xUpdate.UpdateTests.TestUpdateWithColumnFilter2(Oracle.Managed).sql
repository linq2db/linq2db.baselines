BeforeExecute
-- Oracle.Managed Oracle12

DROP SEQUENCE PersonSeq

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE PersonSeq MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @take Int32
SET     @take = 2

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = :FirstName
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	Person
SET
	Person.FirstName = :FirstName
WHERE
	Person.PersonID = :ID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = :ID
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName Varchar2(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	Person
SET
	Person.FirstName = :FirstName,
	Person.LastName = :LastName,
	Person.MiddleName = :MiddleName,
	Person.Gender = :Gender
WHERE
	Person.PersonID = :ID

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = :ID
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	Person x
WHERE
	x.PersonID = :ID


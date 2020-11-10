﻿BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName Varchar2(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING 
	PersonID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(5) -- String
SET     @FirstName = 'John0'
DECLARE @take Int32
SET     @take = 2

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = :FirstName AND p.LastName = 'Shepard'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName Varchar2(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING 
	PersonID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(5) -- String
SET     @FirstName = 'John1'
DECLARE @take Int32
SET     @take = 2

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = :FirstName AND p.LastName = 'Shepard'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4


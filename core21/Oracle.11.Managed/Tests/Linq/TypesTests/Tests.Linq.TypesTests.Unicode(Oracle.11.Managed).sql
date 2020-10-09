BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'擊敗奴隸',
	'Юникодкин',
	'M'
)
RETURNING 
	PersonID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
	p.FirstName = '擊敗奴隸' AND p.LastName = 'Юникодкин' AND
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4


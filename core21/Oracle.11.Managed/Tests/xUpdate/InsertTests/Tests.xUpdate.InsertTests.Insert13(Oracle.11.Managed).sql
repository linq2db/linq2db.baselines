BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Max(t.PersonID)
FROM
	Person t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 4

DELETE FROM
	Person t1
WHERE
	t1.PersonID > :id


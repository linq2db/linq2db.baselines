BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP SEQUENCE PersonSeq

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE PersonSeq MINVALUE 1 START WITH 5

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
	'test',
	'subject',
	'U'
)
RETURNING 
	PersonID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

MERGE INTO Patient t1
USING (SELECT :id AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:id,
		'negative'
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = :id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

MERGE INTO Patient t1
USING (SELECT :id AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:id,
		'positive'
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = :id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

DELETE FROM
	Patient t1
WHERE
	t1.PersonID = :id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5

DELETE FROM
	Person t1
WHERE
	t1.PersonID = :id


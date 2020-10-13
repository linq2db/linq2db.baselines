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
	'John',
	'Shepard',
	'M'
)
RETURNING 
	PersonID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5
DECLARE @i_1 Int32
SET     @i_1 = 0
DECLARE @diagnosis Varchar2(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Int32
SET     @i = 0

MERGE INTO Patient t1
USING (SELECT :id AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = Cast((Length(t1.Diagnosis) + :i_1) as VarChar2(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:id,
		Cast((Length(:diagnosis) + :i) as VarChar2(11))
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5
DECLARE @i_1 Int32
SET     @i_1 = 1
DECLARE @diagnosis Varchar2(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Int32
SET     @i = 1

MERGE INTO Patient t1
USING (SELECT :id AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = Cast((Length(t1.Diagnosis) + :i_1) as VarChar2(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:id,
		Cast((Length(:diagnosis) + :i) as VarChar2(11))
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5
DECLARE @i_1 Int32
SET     @i_1 = 2
DECLARE @diagnosis Varchar2(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Int32
SET     @i = 2

MERGE INTO Patient t1
USING (SELECT :id AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = Cast((Length(t1.Diagnosis) + :i_1) as VarChar2(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:id,
		Cast((Length(:diagnosis) + :i) as VarChar2(11))
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = :id AND ROWNUM <= :take

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


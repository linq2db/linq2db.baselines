﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE TestInsertOrReplaceTable
(
	ID         Int          NOT NULL,
	FirstName  VarChar(255)     NULL,
	LastName   VarChar(255)     NULL,
	MiddleName VarChar(255)     NULL,

	CONSTRAINT PK_TestInsertOrReplaceTable PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'

MERGE INTO TestInsertOrReplaceTable t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.FirstName = :FirstName,
		t1.LastName = :LastName
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		FirstName,
		LastName
	)
	VALUES
	(
		:ID,
		:FirstName,
		:LastName
	)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName_1 Varchar2(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	x.ID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	TestInsertOrReplaceTable x
WHERE
	x.FirstName = :FirstName_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 0
DECLARE @FirstName Varchar2(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2(12) -- String
SET     @MiddleName = 'updated name'

MERGE INTO TestInsertOrReplaceTable t1
USING (SELECT :ID AS ID FROM SYS.DUAL) s ON
(
	t1.ID = s.ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.FirstName = :FirstName,
		t1.LastName = :LastName,
		t1.MiddleName = :MiddleName
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		FirstName,
		LastName,
		MiddleName
	)
	VALUES
	(
		:ID,
		:FirstName,
		:LastName,
		:MiddleName
	)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName_1 Varchar2(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	x.ID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	TestInsertOrReplaceTable x
WHERE
	x.FirstName = :FirstName_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE TestInsertOrReplaceTable


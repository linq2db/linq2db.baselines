BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE PR_1598_Insert_Table_Cache
(
	Id   Int          NOT NULL,
	Name VarChar(255)     NULL,
	Age  Int              NULL,

	CONSTRAINT PK_PR_1598_Insert_Table_Cache PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2

INSERT INTO PR_1598_Insert_Table_Cache
(
	Id,
	Name,
	Age
)
VALUES
(
	:Id,
	:Name,
	:Age
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.Id, 
	t.Name, 
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	PR_1598_Insert_Table_Cache
SET
	PR_1598_Insert_Table_Cache.Name = :Name,
	PR_1598_Insert_Table_Cache.Age = :Age
WHERE
	PR_1598_Insert_Table_Cache.Id = :Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.Id, 
	t.Name, 
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE PR_1598_Insert_Table_Cache


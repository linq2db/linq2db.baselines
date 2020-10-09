BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE PR_1598_Update_Enum_Table
(
	Id     Int          NOT NULL,
	Name   VarChar(255)     NULL,
	Age    Int              NULL,
	Gender VarChar(6)       NULL,

	CONSTRAINT PK_PR_1598_Update_Enum_Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Gender Varchar2(6) -- String
SET     @Gender = 'Female'

INSERT INTO PR_1598_Update_Enum_Table
(
	Id,
	Name,
	Age,
	Gender
)
VALUES
(
	:Id,
	:Name,
	:Age,
	:Gender
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.Id, 
	t.Name, 
	t.Age, 
	t.Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int32
SET     @Age = 2
DECLARE @Gender Varchar2(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Enum_Table
SET
	PR_1598_Update_Enum_Table.Name = :Name,
	PR_1598_Update_Enum_Table.Age = :Age,
	PR_1598_Update_Enum_Table.Gender = :Gender
WHERE
	PR_1598_Update_Enum_Table.Id = :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.Id, 
	t.Name, 
	t.Age, 
	t.Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Enum_Table
SET
	PR_1598_Update_Enum_Table.Name = :Name,
	PR_1598_Update_Enum_Table.Age = :Age
WHERE
	PR_1598_Update_Enum_Table.Id = :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.Id, 
	t.Name, 
	t.Age, 
	t.Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE PR_1598_Update_Enum_Table


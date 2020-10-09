BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE PR_1598_Insert_Enum_Table
(
	Id     Int          NOT NULL,
	Name   VarChar(255)     NULL,
	Age    Int              NULL,
	Gender VarChar(6)       NULL,

	CONSTRAINT PK_PR_1598_Insert_Enum_Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Max'
DECLARE @Age Int32
SET     @Age = 20
DECLARE @Gender Varchar2(4) -- String
SET     @Gender = 'Male'

INSERT INTO PR_1598_Insert_Enum_Table
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t.Id, 
	t.Name, 
	t.Age, 
	t.Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Int32
SET     @Age = 25

INSERT INTO PR_1598_Insert_Enum_Table
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
	t.Age, 
	t.Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE PR_1598_Insert_Enum_Table


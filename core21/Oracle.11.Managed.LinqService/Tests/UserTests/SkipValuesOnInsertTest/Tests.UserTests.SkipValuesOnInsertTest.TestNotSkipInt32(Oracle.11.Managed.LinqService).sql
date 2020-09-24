BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE PR_1598_Insert_Table
(
	Id   Int          NOT NULL,
	Name VarChar(255)     NULL,
	Age  Int              NULL,

	CONSTRAINT PK_PR_1598_Insert_Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Int32
SET     @Age = 55

INSERT INTO PR_1598_Insert_Table
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
	PR_1598_Insert_Table t
WHERE
	t.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int32
SET     @Age = 50

INSERT INTO PR_1598_Insert_Table
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
	PR_1598_Insert_Table t
WHERE
	t.Id = 2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE PR_1598_Insert_Table


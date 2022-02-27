BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE PR_1598_Insert_Null_Table
(
	Id   Int          NOT NULL,
	Name VarChar(255)     NULL,
	Age  Int              NULL,

	CONSTRAINT PK_PR_1598_Insert_Null_Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Tommy'

INSERT INTO PR_1598_Insert_Null_Table
(
	Id,
	Name
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Null_Table t
WHERE
	t.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE PR_1598_Insert_Null_Table


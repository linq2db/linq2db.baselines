BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE PR_1598_Insert_Table
(
	Id   Int           NOT NULL,
	Name NVarChar(255)     NULL,
	Age  Int               NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 14

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE PR_1598_Insert_Table


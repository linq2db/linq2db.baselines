BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE PR_1598_Insert_Enum_Table
(
	Id     Int           NOT NULL,
	Name   NVarChar(255)     NULL,
	Age    Int               NULL,
	Gender NVarChar(6)       NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 20
DECLARE @Gender VarChar(4) -- String
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
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 25

INSERT INTO PR_1598_Insert_Enum_Table
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

DROP TABLE PR_1598_Insert_Enum_Table


BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE PR_1598_Update_Enum_Table
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
DECLARE @Gender VarChar(6) -- String
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
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Enum_Table
SET
	PR_1598_Update_Enum_Table.Name = @Name,
	PR_1598_Update_Enum_Table.Age = @Age,
	PR_1598_Update_Enum_Table.Gender = @Gender
WHERE
	PR_1598_Update_Enum_Table.Id = @Id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 20
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Enum_Table
SET
	PR_1598_Update_Enum_Table.Name = @Name,
	PR_1598_Update_Enum_Table.Age = @Age
WHERE
	PR_1598_Update_Enum_Table.Id = @Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE PR_1598_Update_Enum_Table


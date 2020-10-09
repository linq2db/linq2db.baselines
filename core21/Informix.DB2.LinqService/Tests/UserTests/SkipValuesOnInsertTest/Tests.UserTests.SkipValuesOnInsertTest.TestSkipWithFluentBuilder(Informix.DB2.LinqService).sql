BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE PR_1598_Insert_Fluent_Table
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
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO PR_1598_Insert_Fluent_Table
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	t.Id, 
	t.Name, 
	t.Age
FROM
	PR_1598_Insert_Fluent_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE PR_1598_Insert_Fluent_Table


BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE PR_1598_Insert_Table_Cache
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
SET     @Name = 'John'

INSERT INTO PR_1598_Insert_Table_Cache
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
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Insert_Table_Cache
SET
	PR_1598_Insert_Table_Cache.Name = @Name
WHERE
	PR_1598_Insert_Table_Cache.Id = @Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE PR_1598_Insert_Table_Cache


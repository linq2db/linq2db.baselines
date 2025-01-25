BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PR_1598_Insert_Table_Cache

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Table_Cache
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
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2

INSERT INTO PR_1598_Insert_Table_Cache
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

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Insert_Table_Cache t1
SET
	Name = @Name,
	Age = @Age
WHERE
	t1.Id = @Id

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PR_1598_Insert_Table_Cache


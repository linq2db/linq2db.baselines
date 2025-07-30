BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 14

INSERT INTO PR_1598_Update_Table
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
	PR_1598_Update_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Table t1
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
	PR_1598_Update_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Age Integer(4) -- Int32
SET     @Age = 22
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Table t1
SET
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
	PR_1598_Update_Table t
WHERE
	t.Id = 1


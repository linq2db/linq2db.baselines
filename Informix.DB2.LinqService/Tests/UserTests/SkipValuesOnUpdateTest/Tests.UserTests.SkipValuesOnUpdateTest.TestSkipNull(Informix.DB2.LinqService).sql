BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO PR_1598_Update_Null_Table
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
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Null_Table t1
SET
	Name = @Name,
	Age = @Age
WHERE
	t1.Id = @Id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Update_Null_Table t1
SET
	Name = @Name
WHERE
	t1.Id = @Id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1


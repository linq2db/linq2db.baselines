BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 20

INSERT INTO PR_1598_Mixed_Table
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
	PR_1598_Mixed_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Age Integer(4) -- Int32
SET     @Age = 20
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	PR_1598_Mixed_Table t1
SET
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
	PR_1598_Mixed_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Age Integer(4) -- Int32
SET     @Age = 25

INSERT INTO PR_1598_Mixed_Table
(
	Id,
	Age
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 25
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	PR_1598_Mixed_Table t1
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
	PR_1598_Mixed_Table t
WHERE
	t.Id = 2


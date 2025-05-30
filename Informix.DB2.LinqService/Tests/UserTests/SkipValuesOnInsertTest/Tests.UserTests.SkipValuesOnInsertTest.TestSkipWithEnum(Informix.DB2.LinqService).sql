﻿BeforeExecute
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

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 1

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

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 2


﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PR_1598_SkipCustom_Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS PR_1598_SkipCustom_Table
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
SET     @Age = 15

INSERT INTO PR_1598_SkipCustom_Table
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
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO PR_1598_SkipCustom_Table
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
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PR_1598_SkipCustom_Table


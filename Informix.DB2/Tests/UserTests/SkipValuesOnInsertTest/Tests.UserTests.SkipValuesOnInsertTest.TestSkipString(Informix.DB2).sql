﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PR_1598_Insert_Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS PR_1598_Insert_Table
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
DECLARE @Age Integer(4) -- Int32
SET     @Age = 14

INSERT INTO PR_1598_Insert_Table
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
-- Informix.DB2 Informix

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15

INSERT INTO PR_1598_Insert_Table
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
-- Informix.DB2 Informix

SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PR_1598_Insert_Table


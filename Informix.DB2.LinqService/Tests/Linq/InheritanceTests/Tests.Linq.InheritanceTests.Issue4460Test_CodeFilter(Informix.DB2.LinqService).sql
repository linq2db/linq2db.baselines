BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Base

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Base
(
	Code NVarChar(255)     NULL,
	Id   Int           NOT NULL,
	Name NVarChar(255)     NULL,
	Age  Int               NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO Base
(
	Code,
	Id,
	Name
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Age Integer(4) -- Int32
SET     @Age = 10

INSERT INTO Base
(
	Code,
	Id,
	Age
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	e.Code,
	e.Id,
	e.Age,
	e.Name
FROM
	Base e
WHERE
	e.Code <> 'Child' OR e.Code IS NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Base


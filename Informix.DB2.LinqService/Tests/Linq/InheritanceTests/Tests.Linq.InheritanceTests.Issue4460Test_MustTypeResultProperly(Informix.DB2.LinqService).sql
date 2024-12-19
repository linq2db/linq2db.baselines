BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4460Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4460Table
(
	Id      Int           NOT NULL,
	Code    NVarChar(255)     NULL,
	Name    NVarChar(255)     NULL,
	Surname NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Code VarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname VarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO Issue4460Table
(
	Id,
	Code,
	Name,
	Surname
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4460Table


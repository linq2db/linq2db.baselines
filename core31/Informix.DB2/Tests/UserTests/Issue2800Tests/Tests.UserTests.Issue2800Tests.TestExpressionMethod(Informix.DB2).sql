BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Car

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Car
(
	Id   Int          NOT NULL,
	Name NVarChar(50)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'Special'

INSERT INTO Car
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'NoSpecial'

INSERT INTO Car
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

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	(x.Name <> 'Special' OR x.Name IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Name
FROM
	Car x

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	(x.Name <> 'Special' OR x.Name IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Name
FROM
	Car x
WHERE
	x.Name = 'Special'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Car t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Car


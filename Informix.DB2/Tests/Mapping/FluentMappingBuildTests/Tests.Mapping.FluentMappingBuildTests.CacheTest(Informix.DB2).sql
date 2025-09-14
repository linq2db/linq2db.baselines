BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int          NOT NULL,
	"Value"  NVarChar(20)     NULL,
	LastName NVarChar(20)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO FluentTemp
(
	ID,
	"Value",
	LastName
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID,
	t."Value",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int          NOT NULL,
	"Value"  NVarChar(20)     NULL,
	LastName NVarChar(20)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO FluentTemp
(
	ID,
	"Value",
	LastName
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID,
	t."Value",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int          NOT NULL,
	"Column" NVarChar(20)     NULL,
	LastName NVarChar(20)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO FluentTemp
(
	ID,
	"Column",
	LastName
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID,
	t."Column",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS FluentTemp
(
	ID       Int          NOT NULL,
	"Column" NVarChar(20)     NULL,
	LastName NVarChar(20)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName VarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO FluentTemp
(
	ID,
	"Column",
	LastName
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID,
	t."Column",
	t.LastName
FROM
	FluentTemp t
WHERE
	t.ID = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS FluentTemp


BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Test3664

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Test3664
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Test3664
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Test3664Item

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Test3664Item
(
	Id     Int NOT NULL,
	TestId Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 11
DECLARE @TestId Integer(4) -- Int32
SET     @TestId = 1

INSERT INTO Test3664Item
(
	Id,
	TestId
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 12
DECLARE @TestId Integer(4) -- Int32
SET     @TestId = 1

INSERT INTO Test3664Item
(
	Id,
	TestId
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 11

SELECT
	lw_Test3664.Id,
	a.Id,
	a.TestId
FROM
	Test3664 lw_Test3664
		INNER JOIN Test3664Item a ON lw_Test3664.Id = a.TestId AND a.Id = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 12

SELECT
	lw_Test3664.Id,
	a.Id,
	a.TestId
FROM
	Test3664 lw_Test3664
		INNER JOIN Test3664Item a ON lw_Test3664.Id = a.TestId AND a.Id = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Test3664 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Test3664Item

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Test3664


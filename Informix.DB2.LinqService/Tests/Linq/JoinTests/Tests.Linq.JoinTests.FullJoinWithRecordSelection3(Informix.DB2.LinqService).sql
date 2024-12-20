﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Fact

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Fact
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO Fact
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4

INSERT INTO Fact
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

INSERT INTO Fact
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Tag

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Tag
(
	Id     Int           NOT NULL,
	FactId Int           NOT NULL,
	Name   NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 4
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @FactId Integer(4) -- Int32
SET     @FactId = 6
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag6'

INSERT INTO Tag
(
	Id,
	FactId,
	Name
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	f.Id,
	ft.Id,
	ft.FactId,
	ft.Name
FROM
	Tag ft
		FULL JOIN Fact f ON ft.FactId = f.Id
WHERE
	f.Id > 3 OR ft.FactId > 3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Tag

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Fact


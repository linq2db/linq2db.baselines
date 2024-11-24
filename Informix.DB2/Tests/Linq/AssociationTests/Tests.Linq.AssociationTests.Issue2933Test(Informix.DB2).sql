BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2933Car

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2933Car
(
	PersonId Int     NULL,
	Id       Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Issue2933Car
(
	PersonId,
	Id
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonId Integer -- Int32
SET     @PersonId = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO Issue2933Car
(
	PersonId,
	Id
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2933Person

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2933Person
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Issue2933Person
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2933Pet

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2933Pet
(
	Name     NVarChar(255) NOT NULL,
	Id       Int           NOT NULL,
	PersonId Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1

INSERT INTO Issue2933Pet
(
	Name,
	Id,
	PersonId
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1

INSERT INTO Issue2933Pet
(
	Name,
	Id,
	PersonId
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	t1.Name
FROM
	Issue2933Car x
		LEFT JOIN Issue2933Person a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN (
			SELECT
				a_PetIds.Name,
				ROW_NUMBER() OVER (PARTITION BY a_PetIds.PersonId ORDER BY a_PetIds.PersonId) as rn,
				a_PetIds.PersonId
			FROM
				Issue2933Pet a_PetIds
		) t1 ON a_Person.Id = t1.PersonId AND t1.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2933Pet

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2933Person

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2933Car


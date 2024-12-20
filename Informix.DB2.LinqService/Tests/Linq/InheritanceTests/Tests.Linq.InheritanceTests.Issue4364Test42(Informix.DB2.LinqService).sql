﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4364_BaseThing

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4364_BaseThing
(
	Id                Int NOT NULL,
	"Type"            Int NOT NULL,
	BaseField         Int NOT NULL,
	ConcreteField     Int     NULL,
	IntermediateField Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @BaseField Integer(4) -- Int32
SET     @BaseField = 2

INSERT INTO Issue4364_BaseThing
(
	Id,
	"Type",
	BaseField
)
VALUES
(
	@Id,
	@Type,
	@BaseField
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Type Integer(4) -- Int32
SET     @Type = 2
DECLARE @BaseField Integer(4) -- Int32
SET     @BaseField = 3
DECLARE @ConcreteField Integer(4) -- Int32
SET     @ConcreteField = 4

INSERT INTO Issue4364_BaseThing
(
	Id,
	"Type",
	BaseField,
	ConcreteField
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@ConcreteField
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Type Integer(4) -- Int32
SET     @Type = 101
DECLARE @BaseField Integer(4) -- Int32
SET     @BaseField = 4
DECLARE @IntermediateField Integer(4) -- Int32
SET     @IntermediateField = 6
DECLARE @ConcreteField Integer(4) -- Int32
SET     @ConcreteField = 5

INSERT INTO Issue4364_BaseThing
(
	Id,
	"Type",
	BaseField,
	IntermediateField,
	ConcreteField
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@IntermediateField,
	@ConcreteField
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Type Integer(4) -- Int32
SET     @Type = 102
DECLARE @BaseField Integer(4) -- Int32
SET     @BaseField = 5
DECLARE @IntermediateField Integer(4) -- Int32
SET     @IntermediateField = 6

INSERT INTO Issue4364_BaseThing
(
	Id,
	"Type",
	BaseField,
	IntermediateField
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@IntermediateField
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4364_Person

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4364_Person
(
	Id       Int           NOT NULL,
	FullName NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 1'

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 2'

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 3'

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 4'

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @FullName VarChar(8) -- String
SET     @FullName = 'Person 5'

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4364_Interaction

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4364_Interaction
(
	Id       Int NOT NULL,
	PersonId Int NOT NULL,
	ThingId  Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 2
DECLARE @ThingId Integer(4) -- Int32
SET     @ThingId = 3

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 3
DECLARE @ThingId Integer(4) -- Int32
SET     @ThingId = 4

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 4
DECLARE @ThingId Integer(4) -- Int32
SET     @ThingId = 1

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @PersonId Integer(4) -- Int32
SET     @PersonId = 1
DECLARE @ThingId Integer(4) -- Int32
SET     @ThingId = 2

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x."Type",
	p.FullName
FROM
	Issue4364_BaseThing x
		INNER JOIN Issue4364_Interaction i ON x.Id = i.ThingId
		INNER JOIN Issue4364_Person p ON i.PersonId = p.Id
WHERE
	x."Type" = 101 OR x."Type" = 102
ORDER BY
	x.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4364_Interaction

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4364_Person

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4364_BaseThing


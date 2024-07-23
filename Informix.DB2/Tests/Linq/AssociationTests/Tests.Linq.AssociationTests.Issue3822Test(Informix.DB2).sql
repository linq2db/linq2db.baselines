BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Dog

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Dog
(
	Id      Int NOT NULL,
	OwnerId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @OwnerId Integer(4) -- Int32
SET     @OwnerId = 1

INSERT INTO Dog
(
	Id,
	OwnerId
)
VALUES
(
	@Id,
	@OwnerId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Human

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Human
(
	Id      Int NOT NULL,
	HouseId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @HouseId Integer(4) -- Int32
SET     @HouseId = 1

INSERT INTO Human
(
	Id,
	HouseId
)
VALUES
(
	@Id,
	@HouseId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS House

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS House
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO House
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Window"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Window"
(
	Id         Int NOT NULL,
	"Position" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Position Integer(4) -- Int32
SET     @Position = 6

INSERT INTO "Window"
(
	Id,
	"Position"
)
VALUES
(
	@Id,
	@Position
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.Id
FROM
	Dog x
		INNER JOIN Human a_Owner ON x.OwnerId = a_Owner.Id
		INNER JOIN House a_House ON a_Owner.HouseId = a_House.Id
		LEFT JOIN (
			SELECT FIRST 1
				a_WindowAtPosition.Id
			FROM
				"Window" a_WindowAtPosition
			WHERE
				a_WindowAtPosition."Position" = 6
		) t1 ON 1=1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Window"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS House

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Human

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Dog


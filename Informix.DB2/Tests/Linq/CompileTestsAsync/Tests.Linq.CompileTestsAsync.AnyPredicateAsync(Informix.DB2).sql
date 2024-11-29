BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AsyncDataTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS AsyncDataTable
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO AsyncDataTable
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
SET     @Id = 2

INSERT INTO AsyncDataTable
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
SET     @Id = 3

INSERT INTO AsyncDataTable
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

INSERT INTO AsyncDataTable
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

INSERT INTO AsyncDataTable
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
SET     @Id = 6

INSERT INTO AsyncDataTable
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
SET     @Id = 7

INSERT INTO AsyncDataTable
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
SET     @Id = 8

INSERT INTO AsyncDataTable
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
SET     @Id = 9

INSERT INTO AsyncDataTable
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
SET     @Id = 10

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				AsyncDataTable c_1
			WHERE
				c_1.Id = 2
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AsyncDataTable


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
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 2
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2

SELECT FIRST 2
	c_2.Value_1
FROM
	(
		SELECT
			2 as Id,
			c_1.Id as Value_1
		FROM
			AsyncDataTable c_1
		WHERE
			c_1.Id = @Id_1
	) c_2
WHERE
	c_2.Id = @p_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AsyncDataTable


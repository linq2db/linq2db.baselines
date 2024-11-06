BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Ints

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Ints
(
	One   Int NOT NULL,
	Two   Int NOT NULL,
	Three Int NOT NULL,
	Four  Int NOT NULL,
	Five  Int NOT NULL,
	Nil   Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @One Integer(4) -- Int32
SET     @One = 1
DECLARE @Two Integer(4) -- Int32
SET     @Two = 2
DECLARE @Three Integer(4) -- Int32
SET     @Three = 3
DECLARE @Four Integer(4) -- Int32
SET     @Four = 4
DECLARE @Five Integer(4) -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

INSERT INTO Ints
(
	One,
	Two,
	Three,
	Four,
	Five,
	Nil
)
VALUES
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Ints i

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Ints


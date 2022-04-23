BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Src
(
	Id    Int NOT NULL,
	"Int" Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL

INSERT INTO Src
(
	Id,
	"Int"
)
VALUES
(
	@Id,
	@Int_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2

INSERT INTO Src
(
	Id,
	"Int"
)
VALUES
(
	@Id,
	@Int_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" IN (-1, -2)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" IN (-1, NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" IN (-1, 2)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" NOT IN (NULL, 2)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s."Int" NOT IN (-1, 2)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


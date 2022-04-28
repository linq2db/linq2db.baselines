﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Src
(
	Id    Int         NOT NULL,
	"Int" Int             NULL,
	Enum  NVarChar(5)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL

INSERT INTO Src
(
	Id,
	"Int",
	Enum
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'

INSERT INTO Src
(
	Id,
	"Int",
	Enum
)
VALUES
(
	@Id,
	@Int_1,
	@Enum
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Src s
WHERE
	s."Int" IN (NULL, NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Src s
WHERE
	s."Int" NOT IN (NULL, NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


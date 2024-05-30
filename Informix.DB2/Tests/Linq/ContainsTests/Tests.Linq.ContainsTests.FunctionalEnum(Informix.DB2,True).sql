﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Src
(
	Id    Int         NOT NULL,
	"Int" Int             NULL,
	Enum  NVarChar(5)     NULL,
	CEnum VarChar(20)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int Integer -- Int32
SET     @Int = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL

INSERT INTO Src
(
	Id,
	"Int",
	Enum,
	CEnum
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int Integer(4) -- Int32
SET     @Int = 2
DECLARE @Enum VarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO Src
(
	Id,
	"Int",
	Enum,
	CEnum
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'FOUR')

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.Enum IN ('THREE') OR s.Enum IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.Enum IN ('THREE', 'TWO')

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.Enum NOT IN ('TWO') AND s.Enum IS NOT NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.Enum NOT IN ('THREE', 'TWO') OR s.Enum IS NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


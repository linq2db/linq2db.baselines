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
DECLARE @In VarChar -- String
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IN (@In, @In)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum NOT IN (@NotIn, @NotIn)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


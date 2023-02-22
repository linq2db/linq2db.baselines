BeforeExecute
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
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL
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
	@Int_1,
	@Enum,
	@CEnum
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2
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
	@Int_1,
	@Enum,
	@CEnum
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value4___'

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN (@CEnum, @CEnum_1)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.CEnum IN (@CEnum) OR s.CEnum IS NULL)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN (@CEnum, @CEnum_1)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN (@CEnum_1) AND s.CEnum IS NOT NULL)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @CEnum VarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT FIRST 1
	s.Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN (@CEnum, @CEnum_1) OR s.CEnum IS NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


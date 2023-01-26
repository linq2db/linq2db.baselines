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
	CEnum Int             NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = NULL
DECLARE @Enum VarChar -- String
SET     @Enum = NULL
DECLARE @CEnum Integer -- Int32
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
DECLARE @CEnum Integer(4) -- Int32
SET     @CEnum = 1

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

SELECT
	Count(*)
FROM
	Src s
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Src s
WHERE
	1 = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Src s
WHERE
	1 = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


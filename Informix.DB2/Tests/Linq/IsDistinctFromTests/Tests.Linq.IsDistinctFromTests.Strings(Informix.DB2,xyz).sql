BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Src
(
	"Int"          Int           NOT NULL,
	NullableInt    Int               NULL,
	String         NVarChar(255)     NULL,
	NullableString NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Int Integer(4) -- Int32
SET     @Int = 2
DECLARE @NullableInt Integer(4) -- Int32
SET     @NullableInt = 2
DECLARE @String VarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO Src
(
	"Int",
	NullableInt,
	String,
	NullableString
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Int Integer(4) -- Int32
SET     @Int = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String VarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarChar -- String
SET     @NullableString = NULL

INSERT INTO Src
(
	"Int",
	NullableInt,
	String,
	NullableString
)
VALUES
(
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = @value OR s.String IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = @value OR s.NullableString IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = @value OR s.String IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = @value OR s.NullableString IS NULL AND @value IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


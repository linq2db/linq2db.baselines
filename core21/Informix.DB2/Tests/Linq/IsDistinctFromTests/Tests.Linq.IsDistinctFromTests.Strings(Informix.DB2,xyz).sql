﻿BeforeExecute
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
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 3
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
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = @value_1 OR s.String IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = @value_1 OR s.NullableString IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = @value_1 OR s.String IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value_1 VarChar(3) -- String
SET     @value_1 = 'xyz'

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = @value_1 OR s.NullableString IS NULL AND @value_1 IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ValueConversion

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ValueConversion
(
	Id                      Int                       NOT NULL,
	Value1                  NVarChar(200)                 NULL,
	Value2                  NVarChar(200)                 NULL,
	Enum                    NVarChar(50)              NOT NULL,
	EnumNullable            VarChar(50)                   NULL,
	EnumWithNull            VarChar(50)                   NULL,
	EnumWithNullDeclarative VarChar(50)                   NULL,
	BoolValue               VarChar(1)                NOT NULL,
	AnotherBoolValue        VarChar(1)                NOT NULL,
	DateTimeNullable        datetime year to fraction     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Enum,
	Value2,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	2,
	'[]',
	'Value1',
	'[{"Value":"inserted"}]',
	'Y',
	'T'
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @iteration Integer(4) -- Int32
SET     @iteration = 2

SELECT FIRST 2
	e.Id,
	e.Value1,
	e.Value2,
	e.Enum,
	e.EnumNullable,
	e.EnumWithNull,
	e.EnumWithNullDeclarative,
	e.BoolValue,
	e.AnotherBoolValue,
	e.DateTimeNullable
FROM
	ValueConversion e
WHERE
	e.Id = @iteration

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ValueConversion


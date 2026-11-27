-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO EnumConverterTable
(
	Id,
	SomeText
)
VALUES
(
	@Id,
	@SomeText
)

-- Informix.DB2 Informix
SELECT FIRST 2
	e.Id,
	e.SomeText
FROM
	EnumConverterTable e
WHERE
	e.SomeText = 'Value1_suffix'

-- Informix.DB2 Informix
SELECT FIRST 2
	e.Id,
	e.SomeText
FROM
	EnumConverterTable e
WHERE
	e.Id = 1


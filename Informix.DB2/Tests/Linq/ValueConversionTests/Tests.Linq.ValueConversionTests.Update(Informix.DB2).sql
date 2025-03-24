﻿BeforeExecute
--  Informix.DB2 Informix
DECLARE @Value2 VarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	ValueConversion e
SET
	Value1 = e.Value1,
	Value2 = @Value2,
	EnumWithNull = @EnumWithNull,
	EnumWithNullDeclarative = @EnumWithNullDeclarative
WHERE
	e.Id = 1

BeforeExecute
--  Informix.DB2 Informix

SELECT FIRST 1
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
	e.Id = 1

BeforeExecute
--  Informix.DB2 Informix
DECLARE @Value1 VarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 VarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	ValueConversion t1
SET
	Value1 = @Value1,
	Value2 = @Value2,
	Enum = @Enum,
	EnumNullable = @EnumNullable,
	EnumWithNull = @EnumWithNull,
	EnumWithNullDeclarative = @EnumWithNullDeclarative,
	BoolValue = @BoolValue,
	AnotherBoolValue = @AnotherBoolValue,
	DateTimeNullable = @DateTimeNullable
WHERE
	t1.Id = @Id

BeforeExecute
--  Informix.DB2 Informix

SELECT FIRST 1
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
	e.Id = 2

BeforeExecute
--  Informix.DB2 Informix
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

UPDATE
	ValueConversion t1
SET
	Value1 = @Value1,
	Value2 = @Value2,
	Enum = @Enum,
	EnumNullable = @EnumNullable,
	EnumWithNull = @EnumWithNull,
	EnumWithNullDeclarative = @EnumWithNullDeclarative,
	BoolValue = @BoolValue,
	AnotherBoolValue = @AnotherBoolValue,
	DateTimeNullable = @DateTimeNullable
WHERE
	t1.Id = @Id

BeforeExecute
--  Informix.DB2 Informix

SELECT FIRST 1
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
	e.Id = 3


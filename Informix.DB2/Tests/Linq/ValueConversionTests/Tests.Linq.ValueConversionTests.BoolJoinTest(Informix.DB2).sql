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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str1"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value1"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str2"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value2"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str3"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value3"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str4"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value4"}]'
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

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str5"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value5"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str6"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value6"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str7"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value7"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 8
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str8"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value8"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value2'
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
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 9
DECLARE @Value1 VarChar(15) -- String
SET     @Value1 = '{"some":"str9"}'
DECLARE @Value2 VarChar(20) -- String
SET     @Value2 = '[{"Value":"Value9"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar(1) -- String
SET     @BoolValue = 'Y'
DECLARE @AnotherBoolValue VarChar(1) -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- String
SET     @EnumNullable = 'Value2'
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

INSERT INTO ValueConversion
(
	Id,
	Value1,
	Value2,
	Enum,
	EnumNullable,
	EnumWithNull,
	EnumWithNullDeclarative,
	BoolValue,
	AnotherBoolValue,
	DateTimeNullable
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@AnotherBoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @true_value VarChar(1) -- String
SET     @true_value = 'Y'

SELECT
	t1.Enum
FROM
	ValueConversion t1
		INNER JOIN (
			SELECT
				*
			FROM
				ValueConversion t2
			WHERE
				t2.BoolValue = @true_value
		) t2_1 ON t1.BoolValue = @true_value

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ValueConversion


BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE ValueConversion
(
	Id                      Int           NOT NULL,
	Value1                  VarChar2(200)     NULL,
	Value2                  VarChar2(200)     NULL,
	Enum                    VarChar2(50)  NOT NULL,
	EnumNullable            VarChar(50)       NULL,
	EnumWithNull            VarChar(50)       NULL,
	EnumWithNullDeclarative VarChar(50)       NULL,
	BoolValue               VarChar(1)    NOT NULL,

	CONSTRAINT PK_ValueConversion PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y')
	INTO ValueConversion (Id, Value1, Value2, Enum, EnumNullable, EnumWithNull, EnumWithNullDeclarative, BoolValue) VALUES (10,NULL,NULL,'Value1','Value2','Value2','Value2','N')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value2 NVarchar2(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull Varchar2 -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar2 -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	ValueConversion
SET
	ValueConversion.Value1 = ValueConversion.Value1,
	ValueConversion.Value2 = :Value2,
	ValueConversion.EnumWithNull = :EnumWithNull,
	ValueConversion.EnumWithNullDeclarative = :EnumWithNullDeclarative
WHERE
	ValueConversion.Id = 1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	e.Id,
	e.Value1,
	e.Value2,
	e.Enum,
	e.EnumNullable,
	e.EnumWithNull,
	e.EnumWithNullDeclarative,
	e.BoolValue
FROM
	ValueConversion e
WHERE
	e.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value1 NVarchar2(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 NVarchar2(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Varchar2 -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar2(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative Varchar2(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'N'
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	ValueConversion
SET
	ValueConversion.Value1 = :Value1,
	ValueConversion.Value2 = :Value2,
	ValueConversion.Enum = :Enum,
	ValueConversion.EnumNullable = :EnumNullable,
	ValueConversion.EnumWithNull = :EnumWithNull,
	ValueConversion.EnumWithNullDeclarative = :EnumWithNullDeclarative,
	ValueConversion.BoolValue = :BoolValue
WHERE
	ValueConversion.Id = :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	e.Id,
	e.Value1,
	e.Value2,
	e.Enum,
	e.EnumNullable,
	e.EnumWithNull,
	e.EnumWithNullDeclarative,
	e.BoolValue
FROM
	ValueConversion e
WHERE
	e.Id = 2
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value1 NVarchar2 -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarchar2 -- String
SET     @Value2 = NULL
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable Varchar2 -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull Varchar2 -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative Varchar2 -- String
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'N'
DECLARE @Id Int32
SET     @Id = 3

UPDATE
	ValueConversion
SET
	ValueConversion.Value1 = :Value1,
	ValueConversion.Value2 = :Value2,
	ValueConversion.Enum = :Enum,
	ValueConversion.EnumNullable = :EnumNullable,
	ValueConversion.EnumWithNull = :EnumWithNull,
	ValueConversion.EnumWithNullDeclarative = :EnumWithNullDeclarative,
	ValueConversion.BoolValue = :BoolValue
WHERE
	ValueConversion.Id = :Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	e.Id,
	e.Value1,
	e.Value2,
	e.Enum,
	e.EnumNullable,
	e.EnumWithNull,
	e.EnumWithNullDeclarative,
	e.BoolValue
FROM
	ValueConversion e
WHERE
	e.Id = 3
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE ValueConversion


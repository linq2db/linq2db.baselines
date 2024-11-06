BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360Table1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue3360Table1
(
	Id    Int32,
	Byte  UInt8,
	ByteN Nullable(UInt8),
	Guid  UUID,
	GuidN Nullable(UUID),
	Enum  FixedString(11),
	EnumN Nullable(FixedString(11)),
	Bool  Bool,
	BoolN Nullable(Bool),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue3360Table1
(
	Id,
	Byte,
	ByteN,
	Guid,
	GuidN,
	Enum,
	EnumN,
	Bool,
	BoolN
)
VALUES
(1,toUInt8(0),NULL,toUUID('00000000-0000-0000-0000-000000000000'),NULL,'ENUM1_VALUE',NULL,false,NULL),
(2,toUInt8(1),toUInt8(2),toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),'ENUM1_VALUE','ENUM2_VALUE',true,false),
(4,toUInt8(3),toUInt8(4),toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),'ENUM1_VALUE','ENUM2_VALUE',false,true)

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		r.Id,
		toUInt8(toUInt8(5)) as Byte,
		toUInt8(toUInt8(5)) as ByteN,
		toUUID(toUUID('0b8afe27-481c-442e-b8cf-729ddfeece29')) as Guid,
		toUUID(toUUID('0b8afe27-481c-442e-b8cf-729ddfeece30')) as GuidN,
		toString('ENUM1_VALUE') as Enum,
		toString('ENUM2_VALUE') as EnumN,
		toBool(true) as Bool,
		toBool(false) as BoolN
	FROM
		Issue3360Table1 r
	WHERE
		r.Id = 2
	UNION ALL
	SELECT
		r_1.Id as Id,
		r_1.Byte as Byte,
		r_1.ByteN as ByteN,
		r_1.Guid as Guid,
		r_1.GuidN as GuidN,
		r_1.Enum as Enum,
		r_1.EnumN as EnumN,
		r_1.Bool as Bool,
		r_1.BoolN as BoolN
	FROM
		Issue3360Table1 r_1
			INNER JOIN cte parent ON r_1.Id = parent.Id + 2
)
SELECT
	t1.Id,
	t1.Byte,
	t1.ByteN,
	t1.Guid,
	t1.GuidN,
	t1.Enum,
	t1.EnumN,
	t1.Bool,
	t1.BoolN
FROM
	cte t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue3360Table1


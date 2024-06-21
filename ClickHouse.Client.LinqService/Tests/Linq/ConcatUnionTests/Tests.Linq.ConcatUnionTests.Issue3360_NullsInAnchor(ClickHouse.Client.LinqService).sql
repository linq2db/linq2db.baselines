﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3360Table1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
(
	1,
	toUInt8(0),
	NULL,
	toUUID('00000000-0000-0000-0000-000000000000'),
	NULL,
	'ENUM1_VALUE',
	NULL,
	false,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
(
	2,
	toUInt8(1),
	toUInt8(2),
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),
	'ENUM1_VALUE',
	'ENUM2_VALUE',
	true,
	false
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
(
	4,
	toUInt8(3),
	toUInt8(4),
	toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	'ENUM1_VALUE',
	'ENUM2_VALUE',
	false,
	true
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Byte,
	t1.Byte_1,
	t1.Guid,
	t1.Guid_1,
	t1.Enum,
	t1.EnumN,
	t1.Bool,
	t1.Bool_1
FROM
	(
		SELECT
			r.Id as Id,
			toUInt8(NULL) as Byte,
			toUInt8(NULL) as Byte_1,
			toUUID(NULL) as Guid,
			toUUID(NULL) as Guid_1,
			toString(NULL) as Enum,
			toString(NULL) as EnumN,
			toBool(NULL) as Bool,
			toBool(NULL) as Bool_1
		FROM
			Issue3360Table1 r
		WHERE
			r.Id = 1
		UNION ALL
		SELECT
			r_1.Id as Id,
			r_1.Byte as Byte,
			r_1.ByteN as Byte_1,
			r_1.Guid as Guid,
			r_1.GuidN as Guid_1,
			r_1.Enum as Enum,
			r_1.EnumN as EnumN,
			r_1.Bool as Bool,
			r_1.BoolN as Bool_1
		FROM
			Issue3360Table1 r_1
		WHERE
			r_1.Id = 2
	) t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3360Table1


BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3360Table1
(
	Id    Int         NOT NULL,
	Byte  SmallInt    NOT NULL,
	ByteN SmallInt        NULL,
	Guid  VARCHAR(36) NOT NULL,
	GuidN VARCHAR(36)     NULL,
	Enum  NChar(11)   NOT NULL,
	EnumN NChar(11)       NULL,
	Bool  BOOLEAN     NOT NULL,
	BoolN BOOLEAN         NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Byte SmallInt(2) -- Int16
SET     @Byte = 0
DECLARE @ByteN SmallInt -- Int16
SET     @ByteN = NULL
DECLARE @Guid Char(36) -- StringFixedLength
SET     @Guid = '00000000-0000-0000-0000-000000000000'
DECLARE @GuidN Char -- StringFixedLength
SET     @GuidN = NULL
DECLARE @Enum Char(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool Char(1) -- StringFixedLength
SET     @Bool = 'f'
DECLARE @BoolN SmallInt -- Boolean
SET     @BoolN = NULL

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
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Byte SmallInt(2) -- Int16
SET     @Byte = 1
DECLARE @ByteN SmallInt(2) -- Int16
SET     @ByteN = 2
DECLARE @Guid Char(36) -- StringFixedLength
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidN Char(36) -- StringFixedLength
SET     @GuidN = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Enum Char(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Char(1) -- StringFixedLength
SET     @Bool = 't'
DECLARE @BoolN Char(1) -- StringFixedLength
SET     @BoolN = 'f'

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
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Byte SmallInt(2) -- Int16
SET     @Byte = 3
DECLARE @ByteN SmallInt(2) -- Int16
SET     @ByteN = 4
DECLARE @Guid Char(36) -- StringFixedLength
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @GuidN Char(36) -- StringFixedLength
SET     @GuidN = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Enum Char(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN Char(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool Char(1) -- StringFixedLength
SET     @Bool = 'f'
DECLARE @BoolN Char(1) -- StringFixedLength
SET     @BoolN = 't'

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
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.c1,
	t1.c2,
	t1.c3,
	t1.c4,
	t1.c5,
	t1.c6,
	t1.c7,
	t1.c8
FROM
	(
		SELECT
			r.Id,
			NULL::SmallInt as c1,
			NULL::SmallInt as c2,
			NULL::VARCHAR(36) as c3,
			NULL::VARCHAR(36) as c4,
			NULL::NChar(11) as c5,
			NULL::NChar(11) as c6,
			NULL::BOOLEAN as c7,
			NULL::BOOLEAN as c8
		FROM
			Issue3360Table1 r
		WHERE
			r.Id = 1
		UNION ALL
		SELECT
			r_1.Id,
			r_1.Byte as c1,
			r_1.ByteN as c2,
			r_1.Guid as c3,
			r_1.GuidN as c4,
			r_1.Enum as c5,
			r_1.EnumN as c6,
			r_1.Bool as c7,
			r_1.BoolN as c8
		FROM
			Issue3360Table1 r_1
		WHERE
			r_1.Id = 2
	) t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table1


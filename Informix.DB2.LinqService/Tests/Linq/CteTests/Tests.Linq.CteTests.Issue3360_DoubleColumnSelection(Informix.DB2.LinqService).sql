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

WITH cte
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
AS
(
	SELECT
		r.Id,
		r.Byte,
		NVL(r.Byte, NULL),
		r.Guid,
		NVL(r.Guid, NULL),
		NULL::NChar(11),
		NULL::NChar(11),
		r.Bool,
		NVL(r.Bool, NULL)::BOOLEAN
	FROM
		Issue3360Table1 r
	WHERE
		r.Id = 2
	UNION ALL
	SELECT
		r_1.Id,
		r_1.Byte,
		r_1.ByteN,
		r_1.Guid,
		r_1.GuidN,
		r_1.Enum,
		r_1.EnumN,
		r_1.Bool,
		r_1.BoolN
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
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table1


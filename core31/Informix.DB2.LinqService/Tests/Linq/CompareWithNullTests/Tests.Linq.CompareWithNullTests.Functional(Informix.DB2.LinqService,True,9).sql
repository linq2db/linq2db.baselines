BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Src
(
	Id     Int         NOT NULL,
	A      Int             NULL,
	B      Int             NULL,
	EnumA  NChar(1)        NULL,
	EnumB  NChar(1)        NULL,
	CEnumA VarChar(20)     NULL,
	CEnumB VarChar(20)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 100
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA Char -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB Char -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar -- String
SET     @CEnumB = NULL

INSERT INTO Src
(
	Id,
	A,
	B,
	EnumA,
	EnumB,
	CEnumA,
	CEnumB
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer(4) -- Int32
SET     @B = 1
DECLARE @EnumA Char -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB Char(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO Src
(
	Id,
	A,
	B,
	EnumA,
	EnumB,
	CEnumA,
	CEnumB
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 110
DECLARE @A Integer(4) -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA Char(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB Char -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar -- String
SET     @CEnumB = NULL

INSERT INTO Src
(
	Id,
	A,
	B,
	EnumA,
	EnumB,
	CEnumA,
	CEnumB
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 111
DECLARE @A Integer(4) -- Int32
SET     @A = 1
DECLARE @B Integer(4) -- Int32
SET     @B = 1
DECLARE @EnumA Char(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB Char(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO Src
(
	Id,
	A,
	B,
	EnumA,
	EnumB,
	CEnumA,
	CEnumB
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 112
DECLARE @A Integer(4) -- Int32
SET     @A = 1
DECLARE @B Integer(4) -- Int32
SET     @B = 2
DECLARE @EnumA Char(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB Char(1) -- StringFixedLength
SET     @EnumB = 'B'
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___Two___'

INSERT INTO Src
(
	Id,
	A,
	B,
	EnumA,
	EnumB,
	CEnumA,
	CEnumB
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 121
DECLARE @A Integer(4) -- Int32
SET     @A = 2
DECLARE @B Integer(4) -- Int32
SET     @B = 1
DECLARE @EnumA Char(1) -- StringFixedLength
SET     @EnumA = 'B'
DECLARE @EnumB Char(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- String
SET     @CEnumA = '___Two___'
DECLARE @CEnumB VarChar(9) -- String
SET     @CEnumB = '___One___'

INSERT INTO Src
(
	Id,
	A,
	B,
	EnumA,
	EnumB,
	CEnumA,
	CEnumB
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id
FROM
	Src x
WHERE
	(x.A <= x.B OR x.A IS NULL OR x.B IS NULL)
ORDER BY
	x.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Src


BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TypeConvertTable
(
	Name      NVarChar(50) NOT NULL,
	BoolValue Char         NOT NULL,
	GuidValue VarChar(50)      NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO TypeConvertTable
(
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO TypeConvertTable
(
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GuidValue VarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT 
	Count(*)
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = @GuidValue

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_2 Char(1) -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_1 Char(1) -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_2 Char(1) -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_1 Char(1) -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_2 Char(1) -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_1 Char(1) -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_2 Char(1) -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_1 Char(1) -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_2 Char(1) -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BoolValue_1 Char(1) -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = @BoolValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GuidValue_1 VarChar(36) -- String
SET     @GuidValue_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = @GuidValue_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GuidValue_1 VarChar(36) -- String
SET     @GuidValue_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT FIRST 1 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = @GuidValue_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TypeConvertTable


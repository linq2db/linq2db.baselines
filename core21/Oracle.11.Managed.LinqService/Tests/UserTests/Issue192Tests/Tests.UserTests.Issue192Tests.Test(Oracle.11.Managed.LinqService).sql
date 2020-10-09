BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TypeConvertTable
(
	Name      VarChar(50) NOT NULL,
	BoolValue Char        NOT NULL,
	GuidValue VarChar(50)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Name Varchar2(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue Varchar2(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO TypeConvertTable
(
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue Varchar2(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO TypeConvertTable
(
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GuidValue Varchar2(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT 
	Count(*)
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = :GuidValue

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = :BoolValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GuidValue_1 Varchar2(36) -- String
SET     @GuidValue_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = :GuidValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @GuidValue_1 Varchar2(36) -- String
SET     @GuidValue_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Name, 
	t1.BoolValue, 
	t1.GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = :GuidValue_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TypeConvertTable


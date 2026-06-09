-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(11) -- String
SET     $Name = 'NotVerified'u
DECLARE $BoolValue Text(1) -- AnsiStringFixedLength
SET     $BoolValue = 'N'u
DECLARE $GuidValue Text(36) -- AnsiString
SET     $GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'u

INSERT INTO TypeConvertTable
(
	Id,
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	$Id,
	$Name,
	$BoolValue,
	$GuidValue
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text(8) -- String
SET     $Name = 'Verified'u
DECLARE $BoolValue Text(1) -- AnsiStringFixedLength
SET     $BoolValue = 'Y'u
DECLARE $GuidValue Text(36) -- AnsiString
SET     $GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'u

INSERT INTO TypeConvertTable
(
	Id,
	Name,
	BoolValue,
	GuidValue
)
VALUES
(
	$Id,
	$Name,
	$BoolValue,
	$GuidValue
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'u

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'u

-- YDB Ydb
DECLARE $GuidValue Text(36) -- AnsiString
SET     $GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'u

SELECT
	COUNT(*) as Count_1
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = $GuidValue

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'N'u
LIMIT 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.BoolValue = 'Y'u
LIMIT 1

-- YDB Ydb
DECLARE $GuidValue Text(36) -- AnsiString
SET     $GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'u

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = $GuidValue
LIMIT 1

-- YDB Ydb
DECLARE $GuidValue Text(36) -- AnsiString
SET     $GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'u

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue
FROM
	TypeConvertTable t1
WHERE
	t1.GuidValue = $GuidValue
LIMIT 1


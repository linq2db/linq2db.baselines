-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Discriminator Int32
SET     $Discriminator = 1
DECLARE $Value1 Text(4) -- String
SET     $Value1 = 'Str1'u

INSERT INTO TPHTable
(
	Id,
	Discriminator,
	Value1
)
VALUES
(
	$Id,
	$Discriminator,
	$Value1
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Discriminator Int32
SET     $Discriminator = 2
DECLARE $Value2 Text(4) -- String
SET     $Value2 = 'Str2'u

INSERT INTO TPHTable
(
	Id,
	Discriminator,
	Value2
)
VALUES
(
	$Id,
	$Discriminator,
	$Value2
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 3
DECLARE $Discriminator Int32
SET     $Discriminator = 3
DECLARE $Value3 Text(4) -- String
SET     $Value3 = 'Str3'u
DECLARE $NullableBool Text(1) -- AnsiString
SET     $NullableBool = 'Y'u

INSERT INTO TPHTable
(
	Id,
	Discriminator,
	Value3,
	NullableBool
)
VALUES
(
	$Id,
	$Discriminator,
	$Value3,
	$NullableBool
)

-- YDB Ydb

SELECT
	t1.Discriminator as Discriminator,
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value3 as Value3,
	t1.NullableBool as NullableBool
FROM
	TPHTable t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = 1
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = 2
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = 3
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1'u
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2'u
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3'u
LIMIT 2

